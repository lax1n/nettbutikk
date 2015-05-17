class Subdomain
  def self.matches?(request)
    request.subdomain.present? && request.subdomain != 'www'
  end
end

class Domain
  def self.matches?(request)
    request.domain.present?
  end
end