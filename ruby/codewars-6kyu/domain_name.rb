# # Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:



# 10DIME

# Input
# a string of a URL

# Output
# string of the domain name of said URL

# Definitions/Data Structures
# use gsub and reg ex

# Illustration
# I need to parse the URL for the domain name
# contained before .-something and after two //.
# Then I need to check if it has www. and take that out.
# Return the remaining string.

# Methods
# gsub, reg ex

# Exceptions/Edge Cases
a = "http://github.com/carbonfive/raygun"
b = "http://www.zombie-bites.com"
c = "https://www.cnet.com"
d = "vnz3j4jysr7f4n9j8hhtg427gp.fr/img/"
e = "http://google.co.jp"
f = "www.xakep.ru"
g = "https://youtube.com"
h = "icann.org"
i = "nvp34sybsizq.co"
j = "vnz3j4jysr7f4n9j8hhtg427gp.fr/img/"
k = "ke728s2lf463ik6aw8j56.co.za/default"


# def domain_name(url)
#   part = url
#   if url.match?(/\/./)
#     part = url.partition(/\/./)
#     part = part[2]
#   end
#     if part.match?(/[w]{3}\./)
#       part = part.partition(/[w]{3}\./)
#       part = part[2]
#     end
#   part = part.partition(/\./)
#   part = part[0]
#   part
# end


def domain_name(url)
  if url.match?(/^(http|https|www.)/)
    url.match?(/\/./) ? url = url.partition(/\/./)[2] : url
    url.match?(/[w]{3}\./) ? url = url.partition(/[w]{3}\./)[2] : url
    url = url.partition(/\./)[0]
  else
    url.match?(/\./) ? url = url.partition(/\./)[0] : url
  end
end


p domain_name(a)
p domain_name(b)
p domain_name(c)
p domain_name(d)
p domain_name(e)
p domain_name(f)
p domain_name(g)
p domain_name(h)
p domain_name(i)
p domain_name(j)
p domain_name(k)
