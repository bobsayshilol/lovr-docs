return {
  tag = 'pipeline',
  summary = 'Set whether draws write to the stencil buffer.',
  description = 'TODO',
  arguments = {
    action = {
      type = 'StencilAction',
      description = 'How pixels drawn will update the stencil buffer.'
    },
    actions = {
      type = 'table',
      description = [[
        A list of 3 stencil actions, used when a pixel fails the stencil test, fails
        the depth test, or passes the stencil test, respectively.
      ]]
    },
    value = {
      type = 'number',
      default = '1',
      description = 'When using the \'replace\' action, this is the value to replace with.'
    },
    mask = {
      type = 'number',
      default = '0xff',
      description = 'An optional mask to apply to stencil values before writing.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'action', 'value', 'mask' },
      returns = {}
    },
    {
      arguments = { 'actions', 'value', 'mask' },
      returns = {}
    },
    {
      description = 'Disables stencil writing.',
      arguments = {},
      returns = {}
    }
  },
  notes = 'TODO',
  related = {
    'Pass:setStencilTest',
    'Pass:setDepthTest'
  }
}
