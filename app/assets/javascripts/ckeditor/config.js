CKEDITOR.editorConfig = function (config) {
  config.toolbar = [
    { name: 'clipboard', groups: [ 'clipboard', 'undo' ], items: [ 'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo' ] },
    { name: 'editing', groups: [ 'find', 'selection', 'spellchecker' ], items: [ 'Scayt' ] },
    { name: 'links', items: [ 'Link', 'Unlink', 'Anchor' ] },
    { name: 'insert', items: [ 'Image', 'Table', 'HorizontalRule', 'SpecialChar' ] },
    { name: 'tools', items: [ 'Maximize' ] },
    { name: 'document', groups: [ 'mode', 'document', 'doctools' ], items: [ 'Source' ] },
    { name: 'others', items: [ '-' ] },
    '/',
    { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ], items: [ 'Bold', 'Italic', 'Strike', '-', 'RemoveFormat' ] },
    { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ], items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote' ] },
    { name: 'styles', items: [ 'Styles', 'Format' ] },
    { name: 'about', items: [ 'About' ] }
  ];
};