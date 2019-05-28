class Category < ApplicationRecord
    has_many :favorites

    # def self.sort_cat
    #     Category.all.each do |category|
    #         category.favorites.map do |favorite|
    #             favorite.name
    #
    #         end
    #
    #     end
    # end
end
