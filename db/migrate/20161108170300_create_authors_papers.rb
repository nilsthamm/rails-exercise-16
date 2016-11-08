class CreateAuthorsPapers < ActiveRecord::Migration
	def self.up
    create_table :authors_papers, :id => false do |t|
        t.references :author
        t.references :paper
    end
    add_index :authors_papers, [:author_id, :paper_id]
    add_index :authors_papers, :paper_id
  end

  def self.down
    drop_table :authors_papers
  end
end
