require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.new(email: "test@example.com", password: "password", password_confirmation: "password")
  end

  context "ユーザーの新規登録" do
    it "正しい情報があれば登録できる" do
      expect(@user).to be_valid
    end

    it "メールアドレスがないと登録できない" do
      @user.email = nil
      expect(@user).not_to be_valid
    end

    it "メールアドレスが重複していると登録できない" do
      duplicate_user = @user.dup
      @user.save
      expect(duplicate_user).not_to be_valid
    end

    it "パスワードがないと登録できない" do
      @user.password = nil
      expect(@user).not_to be_valid
    end

    it "パスワードが6文字未満だと登録できない" do
      @user.password = "12345"
      @user.password_confirmation = "12345"
      expect(@user).not_to be_valid
    end

    it "パスワードが確認用と一致しないと登録できない" do
      @user.password_confirmation = "different_password"
      expect(@user).not_to be_valid
    end
  end
end
