#encoding: utf-8
class CtsinitsController < ApplicationController
  def index

    if Admin.count == 0
      Admin.create(name:"admin",password:"admin",password_confirmation:"admin")
    end

    if Cfg.count == 0
      Cfg.create(give_cost:"0",company_name:"网络电话",sales_tel:"0877-2681050",service_tel:"0877-2681050",gateway:"0877-2681050")
    end

  end

  def new

  end

  def create

  end
end
