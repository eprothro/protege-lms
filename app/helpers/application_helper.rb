module ApplicationHelper
  def avatar_url(resource, opts={})
    opts[:size] ||= 48
    opts[:email] ||= resource.try(:gravatar_email) rescue nil
    opts[:email] ||= resource.try(:email) rescue nil

    gravatar_id = Digest::MD5::hexdigest(opts[:email]).downcase

    # 48 px gravatar with mystery man as the default
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{opts[:size]}&d=mm"
  end

  def random_learning_quote
    quotes = [
      {text: "Develop a passion for learning. If you do, you will never cease to grow.", author: "Anthony J. D'Angelo"},
      {text: "Leadership and learning are indispensable to each other.", author: "John F. Kennedy "}
    ]

    Hashie::Mash.new(quotes.sample)
  end
end