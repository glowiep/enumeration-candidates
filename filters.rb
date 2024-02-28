# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'

# Returns the candidate with that :id
# If there is no candidate with that id, 
# it naturally returns nil
def find(id)
  @candidates.each{ |candidate| return candidate if candidate[:id] == id }
  nil
end
  
# Takes in a single candidate (hash). Note: not the array.
# Returns true if the candidate has 2 years of experience or more
# Returns false otherwise
def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

# Takes in the collection of candidates
# Returns a subset of the candidates that meet the following criteria:
  # Are experienced
  # Have 100 or more Github points
  # Know at least Ruby or Python
  # Applied in the last 15 days
  # Are over the age of 17 (18+)
def qualified_candidates(candidates)
  qualified = []
  candidates.each do |candidate|
    if candidate[:years_of_experience] > 0 &&
    candidate[:github_points] >= 100 &&
    (candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")) &&
    candidate[:age] > 17
    qualified << candidate
    end
  end
  qualified
end
  
  # More methods will go below
  # Takes in a collection of candidates
  # Sort on Experience and Points
  def ordered_by_qualifications(candidates)
    
  end