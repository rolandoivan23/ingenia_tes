class ProductDiscountPackagesController < ApplicationController
  before_action :set_product_discount_package, only: %i[ show edit update destroy ]

  # GET /product_discount_packages or /product_discount_packages.json
  def index
    @product_discount_packages = ProductDiscountPackage.all
  end

  # GET /product_discount_packages/1 or /product_discount_packages/1.json
  def show
  end

  # GET /product_discount_packages/new
  def new
    @product_discount_package = ProductDiscountPackage.new
  end

  # GET /product_discount_packages/1/edit
  def edit
  end

  # POST /product_discount_packages or /product_discount_packages.json
  def create
    @product_discount_package = ProductDiscountPackage.new(product_discount_package_params)

    respond_to do |format|
      if @product_discount_package.save
        format.html { redirect_to @product_discount_package, notice: "Product discount package was successfully created." }
        format.json { render :show, status: :created, location: @product_discount_package }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_discount_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_discount_packages/1 or /product_discount_packages/1.json
  def update
    respond_to do |format|
      if @product_discount_package.update(product_discount_package_params)
        format.html { redirect_to @product_discount_package, notice: "Product discount package was successfully updated." }
        format.json { render :show, status: :ok, location: @product_discount_package }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_discount_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_discount_packages/1 or /product_discount_packages/1.json
  def destroy
    @product_discount_package.destroy
    respond_to do |format|
      format.html { redirect_to product_discount_packages_url, notice: "Product discount package was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_discount_package
      @product_discount_package = ProductDiscountPackage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_discount_package_params
      params.require(:product_discount_package).permit(:name, :description, :discount_percentage)
    end
end
