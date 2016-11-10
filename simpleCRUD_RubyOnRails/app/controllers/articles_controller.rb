class ArticlesController < ApplicationController
  def index
      @articles = Article.all #baris ini melakukan request akan semua list dari Article yang tersimpan di database yang nantinya dapat digunakan dalam view  index
  end

  def create
    #render plain: params[:article].inspect #baris ini akan mengembalikan langsung kembalian parameter params dalam bentuk plain text
    #@article = params[:article] #baris ini akan mengeset variabel @article yang nantinya bisa dipakai/dikirim keview (view/articles/create)
    ##############============================
    #@article = Article.new(params[:article])# baris ini akan menyebabkan error "Active Model", yang dikarenakan salah satu atribut yang harus ada
    # sehigga dapat diperbaiki menjadi
    #@article =  Article.new(params.require(:article).permit(:title,:text))
    #Baris kode diatas juga dianggap kurang baik untuk mengindari pemanggilan dari luar, sehigga dilakukan pendefenisian di luar method yaitu article_params

    @article = Article.new(article_params)

    #@article.save #baris ini akan menyimpan parameter kedalam database
    #perlu ada pengecekan terhadap disimpan atau tidaknya, sehingga hal tersebut dapat dilakukan melalui baris kode berikut.
        if @article.save #bernilai benar jika berhasik menyimpan
          redirect_to @article
        else
          render 'new' #jika tidak berhasil menyimpan maka tetap berada pada halaman new.
        end

    #redirect_to @article #baris ini akan mengarahkan ke method show(berdasarkan routes)
  end

  def new
    @article = Article.new() #baris ini dibutuhkan karena pada view, membutuhkan pengeceka validasi inputan
  end

  def edit
    @article = Article.find(params[:id]) #baris ini akan memparsing data dari id yang akan di edit
    #variabel @article ini nantinya akan menjadi inputan serta yang akan di edit pada view edit.html.erb.
  end

  def show
      @article = Article.find(params[:id]) #baris ini akan mengambil parameter dari database berdasarkan parameter dari id
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
        redirect_to @article
    else
        render 'edit'
    end
  end

  def destroy
    #fungsi ini akan menjalankan penghapusan dari database.
    #hal ini dilakukan dengan destroy terhadao object yang diketahui.

    @article = Article.find(params[:id]) #baris ini akan set value dari id ke @article.
    @article.destroy #baris ini akan melakukan  destroy terhadap object tersebut
    redirect_to articles_path #baris ini mengembalikan halaman utama sebagai tampilan
  end

  private
    def article_params
      params.require(:article).permit(:title,:text)
    end


end
