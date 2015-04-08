module AuthsHelper
  def showauth #提取所有权限资源记录
    @showauths = Auth.all
  end
end
