module ApplicationHelper
    def bootstrap_class_for(flash_type)
        {
          success: "alert-success",
          error: "alert-danger",
          alert: "alert-warning",
          notice: "alert-info"
        }.stringify_keys[flash_type.to_s] || flash_type.to_s
      end
      
    def toastr_flash
        flash.each_with_object([]) do |(type, message), flash_messages|
          type = 'success' if type == 'notice'
          type = 'error' if type == 'alert'
    
          text = <<~EOF
          <script>
            document.addEventListener("turbolinks:load", function() {
              toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true })
            });
          </script>
          EOF
          flash_messages << text.html_safe if message
        end.join("\n").html_safe
      end

        def default_meta_tags
          {
            site: 'Taskrol.com',
            title: 'TasKrol',
            reverse: true,
            separator: '|',
            description: 'taskrol is an online service platform that instantly connects you with skilled Taskers to help with cleaning, handyman services, electronic repairs, running errands and more',
            keywords: 'taskrol, tasks, jobs, plumbers in Ghana, handyman in Ghana, phone repairs in Ghana, cctv installtions services, errands, aircondition repairs, web and IT services',
            canonical: request.original_url,
            noindex: !Rails.env.production?,
            icon: [
              { href: image_url('favicon.png') },
              { href: image_url('favicon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
            ],
            og: {
              site_name: 'TasKrol.com',
              title: 'TasKrol',
              description: 'taskrol is an online service platform that instantly connects you with skilled Taskers to help with cleaning, handyman services, electronic repairs, running errands and more', 
              type: 'website',
              url: request.original_url,
              image: image_url('logo-website.png')
            }
          }
      end
end
