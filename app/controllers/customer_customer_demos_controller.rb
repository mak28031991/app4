class CustomerCustomerDemosController < ApplicationController
  before_action :set_customer_customer_demo, only: [:show, :edit, :update, :destroy]

  # GET /customer_customer_demos
  # GET /customer_customer_demos.json
  def index
    @customer_customer_demos = CustomerCustomerDemo.all
  end

  # GET /customer_customer_demos/1
  # GET /customer_customer_demos/1.json
  def show
  end

  # GET /customer_customer_demos/new
  def new
    @customer_customer_demo = CustomerCustomerDemo.new
  end

  # GET /customer_customer_demos/1/edit
  def edit
  end

  # POST /customer_customer_demos
  # POST /customer_customer_demos.json
  def create
    @customer_customer_demo = CustomerCustomerDemo.new(customer_customer_demo_params)

    respond_to do |format|
      if @customer_customer_demo.save
        format.html { redirect_to @customer_customer_demo, notice: 'Customer customer demo was successfully created.' }
        format.json { render :show, status: :created, location: @customer_customer_demo }
      else
        format.html { render :new }
        format.json { render json: @customer_customer_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_customer_demos/1
  # PATCH/PUT /customer_customer_demos/1.json
  def update
    respond_to do |format|
      if @customer_customer_demo.update(customer_customer_demo_params)
        format.html { redirect_to @customer_customer_demo, notice: 'Customer customer demo was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_customer_demo }
      else
        format.html { render :edit }
        format.json { render json: @customer_customer_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_customer_demos/1
  # DELETE /customer_customer_demos/1.json
  def destroy
    @customer_customer_demo.destroy
    respond_to do |format|
      format.html { redirect_to customer_customer_demos_url, notice: 'Customer customer demo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_customer_demo
      @customer_customer_demo = CustomerCustomerDemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_customer_demo_params
      params.require(:customer_customer_demo).permit(:CustomerID, :CustomerTypeID)
    end
end
