__precompile__() # Este comando es para que julia precompile el paquete

module herramientas

export metodo_newton

function metodo_newton(f,df,x0)
    x=x0
    for i in 1:20
       x=x-f(x)/df(x) 
    end
    return x
end

end