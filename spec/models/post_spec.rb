require 'rails_helper'

RSpec.describe Post, type: :model do

	describe 'attributes' do
		it { expect(subject.attributes).to include('title', 'content') }
	end
	describe 'validations' do
		it { should validate_presence_of(:title) }
		it { should validate_presence_of(:content) }
		it { should validate_uniqueness_of(:title) }
		it { should validate_length_of(:title).is_at_most(80) }
		it { should validate_length_of(:content).is_at_least(10).is_at_most(500) }
		it { should belong_to(:author) }
		it { should have_many(:comments) }
	end

	let(:post) { post = Post.new(title: 'test', content: 'test') }
	it 'should have working #post_info method' do
		expect(post.post_info).to eq('title: test content: test')
	end

	describe 'scopes' do
		let(:author) { author = Author.create(name: "test", surname: "test", age: 34) }
		let(:post1) { post1 = Post.create(title: 'test', content: 'testtesttest', created_at: DateTime.now - 50.minutes, author_id: author.id) }
		let(:post2) { post2 = Post.create(title: 'test', content: 'testtesttest', created_at: DateTime.now, author_id: author.id) }
		it 'should have old scope' do			
			expect(Post.old).to include(post1)
			expect(Post.old).not_to include(post2)
		end
	end
	
end