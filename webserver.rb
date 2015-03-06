require "sinatra"

get "/" do
"hello world!"
end

get '/calc' do
	"
	<html>
	  <body>
	    <form action='/calculate' method='get'>
	       number1: <input name='number1'/>
           number2: <input name='number2'/>
           <input type='submit' name='sub' value='add'/>
           <input type='submit' name='sub' value='mul'/>
        </form>
      </body>
    </html>
	"
end

get '/calculate' do 
	number1 = params['number1'].to_i
    number2 = params['number2'].to_i
    if params['sub']=='add'
      sub = number1+number2
      "the sum of the numbers entered is #{sub}"
    elsif params['sub']=='mul'
	  sub = number1*number2
	  "the product of the numbers entered is #{sub}"
    end
 end
 