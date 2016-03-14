# -*- coding: utf-8 -*-
require 'spec_helper'

describe User do
  context '何も入力しなかった場合' do
    it "無効な状態であること" do 
        user = User.new(name: nil)
	user.valid?
    	expect(user.errors[:name]).to include("can't be blank")
    end
  end
=begin
  context '名前が文字数をオーバーしている場合' do
    subject{User.new(name: 'aaaaaaaaaabbbbbbbbbbc',age: 10)}
    it {should_not be_valid}
    it{ should have(1).errors_on(:name) }
    it{ should have(0).errors_on(:age) }
  end

  context '年齢が範囲を超えている場合' do
    subject{User.new(name: 'taro',age: 1001)}
    it {should_not be_valid}
    it{ should have(0).errors_on(:name) }
    it{ should have(1).errors_on(:age) }
  end
=end

  context '正常なデータがセットされた場合' do
    subject{User.new(name: 'taro',age: 20)}
    it {should be_valid}
  end
end
