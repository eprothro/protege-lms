module ApplicationHelper
  def avatar_url(user, opts={})
    opts[:size] ||= 48
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    # 48 px gravatar with mystery man as the default
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{opts[:size]}&d=mm"
  end
end