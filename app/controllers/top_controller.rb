# coding: utf-8
class TopController < ApplicationController

  # =========追加 =================
  def index
    @lists = List.where(user: current_user).order("created_at ASC")
  end
  # ========= =================

end
