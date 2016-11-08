class CreatePapersAuthors < ActiveRecord::Migration
  def self.up
    create_table :papers_authors, :id => false do |t|
        t.references :paper
        t.references :author
    end
    add_index :papers_authors, [:paper_id, :author_id]
    add_index :papers_authors, :author_id
  end

  def self.down
    drop_table :papers_authors
  end
end
