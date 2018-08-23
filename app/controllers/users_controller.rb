require 'will_paginate/array'

class UsersController < ApplicationController
  
  before_action :set_seluser, only: [:us, :information, :bus, :hotel, :hair, :makeup, :prewedding, :presents]

  def index
    @users=User.search(params[:search]).paginate(:per_page => 5, :page => params[:page])
  end

  def us
  end

  def information
  end
  
  def bus
  end
  
  def hotel
  end
  
  def hair
  end
  
  def makeup
  end
  
  def prewedding
  end
  
  def presents
  end
  private
  
  def set_seluser
    @seluser=User.find(params[:format])
    if @seluser
      @buses=@seluser.details.where(case: "Autobuses")
      @hotel=@seluser.details.where(case: "Hotel")
      @hair=@seluser.details.where(case: "Peluquería")
      @makeup=@seluser.details.where(case: "Maquillaje")
      @prewedding=@seluser.details.where(case: "Preboda")
      @presents=@seluser.presents
    end
  end
  
  
end