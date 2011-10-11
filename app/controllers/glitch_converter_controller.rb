class GlitchConverterController < ApplicationController

  def index
    if params[:resource]
      @resource = Resource.new(params[:resource])

      if @resource.valid?
        if params[:resource][:file].present?
          resource_file 
        elsif params[:resource][:url].present?
          resource_url
          redirect_to root_path :url => params[:resource][:url]
          return
        end
      end

    elsif params[:url]
      @resource = Resource.new
      resource_url
    else
      sample = SampleImages.find(rand(SampleImages.count) + 1)
      session[:image] = sample.image
      session[:mime_type] = sample.mime_type
      @sample = { :link => sample.link, :title => sample.title }
      @resource = Resource.new
    end
  end

  def send_image
    send_data session[:image], :type => session[:mime_type] || 'image/jpeg', :disposition => 'inline'
  end

  def send_glitch
    solution = Glitch.new(session[:image],params)

    case session[:mime_type]
    when 'image/png'
      solution = solution.png
    else
      solution = solution.jpeg
    end

    send_data solution, :type => session[:mime_type] || 'image/jpeg', :disposition => 'inline'
  end

  def set_sample
    SampleImages.new( :image => session[:image], :mime_type => session[:mime_type] ).save!
    redirect_to root_path
  end

  private

  def demo
    file = "google_logo.png"
    path = File.expand_path('./public/resource')
    pp "#{path}/#{file}"
    File.read("#{path}/#{file}",'rb') do |f|
      session[:image] = f.read
      session[:mime_type] = mime_type(f)
    end
  end

  def resource_url
    if params[:url]
       url = params[:url]
    elsif params[:resource][:url]
       url = params[:resource][:url]
    end
    file = open(url)
    session[:mime_type] = mime_type(file)
    session[:image] = file.read
  end

  def resource_file
    session[:image] = params[:resource][:file].read
    session[:mime_type] = params[:resource][:file].content_type
  end

# def format_jpeg(file)
#   return if mime_type(file) == 'jpeg'
#   image = Magick::Image.read(file.to_path).first
#   image.format = 'JPEG'
#   image.to_blob
# end

  def mime_type(file)
    header = file.read(8)
    unless header
      file.open
      header = file.read(8)
    end
    file.pos = 0
    if ( /^\x89PNG/n.match(header) ) 
      return "image/png"
    elsif (/^GIF8[79]a/n.match(header) )
      return "image/gif"
    elsif( /^\xff\xd8/n.match(header) )
      return "image/jpeg"
    elsif( /^BM/n.match(header) )
      return "image/bmp"
    end
  end
end
