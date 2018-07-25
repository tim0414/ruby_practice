
def twice
    yield
    yield
end

a = 10
twice {puts a}


