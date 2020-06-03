class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
        @coupon = Coupon.new
    end

    def created
        @coupon = Coupon.create(params[:coupon])
        redirect_to coupon_path(@coupon)
    end
end
