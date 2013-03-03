module ApplicationHelper
  def avatar_url(user, opts={})
    opts[:size] ||= 48
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
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