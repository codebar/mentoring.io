class Classified < ActiveRecord::Base
  has_many :classified_skills
  has_many :skills, through: :classified_skills
  has_many :messages
  
  belongs_to :member
  before_save :add_url_token

  def self.search(params)
    search_clause = []
    if !params[:location].blank?
      search_clause << "members.location like '%#{params[:location]}%'"
    end
    if params[:remote]
      search_clause << "remote is 'true'"
    end
    if params[:face_to_Face]
      search_clause << "face_to_face is 'true'"
    end
    if params[:skill_ids]
      search_clause << "skills.id in ('#{params[:skill_ids].join("','")}')"
    end
    search_clause = search_clause.join(" and ").to_s
    puts "search_clause : #{search_clause}"
    Classified.select("classifieds.*").joins(:member).joins(:skills).where(search_clause).group("classifieds.id")
  end

  private

  def add_url_token
    begin
      self.url_token = SecureRandom.hex[3,7].upcase
    end while self.class.exists?(url_token: url_token)
  end
end
