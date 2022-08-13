return {
  summary = 'Get all the triangles in a mesh.',
  description = [[
    Returns the data for all triangles in the mesh.  There are a few differences between this
    function and the mesh-specific functions like `ModelData:getMeshVertex` and
    `ModelData:getMeshIndex`:

    - Only vertex positions are returned, not other vertex attributes.
    - Positions are relative to the origin of the whole model, instead of local to a node.
    - If a mesh is attached to more than one node, its vertices will be in the table multiple times.
    - Vertex indices will be relative to the whole triangle list instead of a mesh.
  ]],
  arguments = {},
  returns = {
    {
      name = 'vertices',
      type = 'table',
      description = [[
        The triangle vertex positions, returned as a flat (non-nested) table of numbers.  The
        position of each vertex is given as an x, y, and z coordinate.
      ]]
    },
    {
      name = 'indices',
      type = 'table',
      description = 'The vertex indices.  Every 3 indices describes a triangle.'
    }
  },
  notes = 'After this function is called on a ModelData once, the result is cached.',
  related = {
    'ModelData:getTriangleCount',
    'ModelData:getVertexCount'
  }
}
