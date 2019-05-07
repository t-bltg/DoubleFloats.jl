function Base.isapprox(x::DoubleFloat{T}, y::T; rtol::Real=atol>0 ? 0 : eps(T)^(5/8), atol::Real=0, nans::Bool=false, norm::Function=LinearAlgebra.norm) where {T<:IEEEFloat}
    return isapprox(x, DoubleFloat{T}(y), rtol=rtol, atol=atol, nans=nans, norm=norm)
end
function Base.isapprox(x::T, y::DoubleFloat{T}; rtol::Real=atol>0 ? 0 : eps(T)^(5/8), atol::Real=0, nans::Bool=false, norm::Function=LinearAlgebra.norm) where {T<:IEEEFloat}
    return isapprox(x, DoubleFloat{T}(y), rtol=rtol, atol=atol, nans=nans, norm=norm)
end
function Base.isapprox(x::DoubleFloat{T}, y::DoubleFloat{T}; rtol::Real=atol>0 ? 0 : eps(T)^(5/8), atol::Real=0, nans::Bool=false, norm::Function=LinearAlgebra.norm) where {T<:IEEEFloat}
    x == y || (isfinite(x) && isfinite(y) && abs(x-y) <= max(atol, rtol*max(abs(x), abs(y)))) || (nans && isnan(x) && isnan(y))
end
        
function Base.lerpi(j::Integer, d::Integer, a::DoubleFloat{T}, b::DoubleFloat{T}) where {T}
    t = DoubleFloat{T}(j)/d
    a = fma(-t, a, a)
    return fma(t, b, a)
end

# for compatibility with old or unrevised outside linalg functions
function Base.:(+)(v::Vector{DoubleFloat{T}}, x::T) where {T}
    return v .+ x
end
function Base.:(-)(v::Vector{DoubleFloat{T}}, x::T) where {T}
    return v .- x
end
function Base.:(+)(m::Matrix{DoubleFloat{T}}, x::T) where {T}
    return m .+ x
end
function Base.:(-)(m::Matrix{DoubleFloat{T}}, x::T) where {T}
    return m .- x
end
