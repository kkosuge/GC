class Glitch

  def initialize(file,params={})
    @file = file
    @params = {
      :x => params[:x] || rand64,
      :y => params[:y] || rand64,
      :range => params[:range] || 80
    }
  end

  def jpeg
    if @file.size < 1024*100
      @file[0..9] + @file[10..-1].gsub!(@params[:x],@params[:y])
    else
      ushiro = @file[10..-1]
      @params[:range].to_i.times do
        ushiro = ushiro.sub!(@params[:x],@params[:y])
      end
      @file[0..9] + ushiro
    end
  end

  def png
    data = @file.split 'IDAT'
    head, idat, tail, size = '', [], '', 0
    data.each do |d|
      idat.push d[0, size] if size > 0
      head = d[0, d.size - 4] if size == 0
      tail = d[(size + 4)..-1]
      size = d[d.size - 4, 4].unpack('Na').first
    end
    raw = Zlib::Inflate.new.inflate(idat.join)

    # omoi
    # (@params[:range].to_i*@params[:range].to_i).times do
    #   raw.sub!(@params[:x], @params[:y])
    # end

    raw.gsub!(@params[:x], @params[:y])

    cmp = Zlib::Deflate.deflate(raw)
    size = [cmp.size].pack('N')
    data = size + 'IDAT' + cmp
    crc = [Zlib.crc32(cmp, Zlib.crc32('IDAT'))].pack('N')
    head << data << crc << tail
  end

  def base64_array
    ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f",
     "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
     "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L",
     "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "+", "/"]
  end
  
  def rand64
    base64_array[rand(64)]
  end
end
