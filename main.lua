local UDimPlus = {}

function UDimPlus.fromVector2(vector, scale, offset)
    scale = scale or Vector2.new(1, 1)
    offset = offset or Vector2.new(0, 0)
    return UDim2.new(0, vector.X * scale.X + offset.X, 0, vector.Y * scale.Y + offset.Y)
end

function UDimPlus.toVector2(udim2, scale, offset)
    scale = scale or Vector2.new(1, 1)
    offset = offset or Vector2.new(0, 0)
    return Vector2.new((udim2.X.Offset - offset.X) / scale.X, (udim2.Y.Offset - offset.Y) / scale.Y)
end

function UDimPlus.fromUDim2(udim2, scale, offset)
    scale = scale or Vector2.new(1, 1)
    offset = offset or Vector2.new(0, 0)
    return Vector2.new((udim2.X.Offset - offset.X) / scale.X, (udim2.Y.Offset - offset.Y) / scale.Y)
end

function UDimPlus.toUDim2(vector, scale, offset)
    scale = scale or Vector2.new(1, 1)
    offset = offset or Vector2.new(0, 0)
    return UDim2.new(0, vector.X * scale.X + offset.X, 0, vector.Y * scale.Y + offset.Y)
end

return UDimPlus
