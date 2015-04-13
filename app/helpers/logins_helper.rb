module LoginsHelper

  def checkauth(urls)
   if @authidarr
     else
    @checkadmin = Admin.find(session[:admin_id])

    @checkrole = @checkadmin.roles.ids
    #debugger
    @authidarr=Array.new
    @checkrole.each do |f|
      @chkrole=Role.find(f)

        @chkrole.auths.ids.each do |t|

          @authidarr.push(Auth.find(t).url)

        end
    end

    @authidarr.uniq!
    #debugger

   end
   if @authidarr.include?urls
     return true
   else
     return false
   end
  end


end
