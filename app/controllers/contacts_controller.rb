class ContactsController < ApplicationController
	def index
		@all_contacts = Contact.all
        
        if params[:category].blank?
            @contacts = Contact.all.order("created_at DESC")
        else
            @category_id = Category.find_by(name: params[:category]).id
            @contacts = Contact.where(category_id: @category_id).order("created_at DESC")
        end
	end

	def new
		@contact = current_user.contacts.build
	end

	def create
		@contact = current_user.contacts.build (contact_params)
		if @contact.save
			redirect_to user_contacts_path
		else
			render 'new'
		end
	end

	def show
		@contact = current_user.contacts.find(params[:id])
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	private
	def contact_params
		params.require(:contact).permit(:name, :homenum, :mobnum, :adress, :picture, :category_id, :gender_id, :picture)
	end

end
