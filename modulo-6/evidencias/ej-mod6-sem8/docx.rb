require 'htmltoword'

file_name = "test.docx"

my_html = '<html><head></head><body><p>Hello</p></body></html>'
file = Htmltoword::Document.create my_html, file_name


def show
    respond_to do |format|
      format.docx do
        file = Htmltoword::Document.create params[:docx_html_source], file_name
        send_file file.path, :disposition => "attachment"
      end
    end
end

show()