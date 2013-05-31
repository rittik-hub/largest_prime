class Web
  def self.google(number)
    open("http://lmgtfy.com/?q=largest+prime+number+", number)
  end
  def self.wolfram_alpha(number)
    open("http://www.wolframalpha.com/input/?i=factor+", number)
  end

  def self.open(url, number)
    system('open -a /Applications/Safari.app ' + url + number.to_s)
  end
end