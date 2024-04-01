ClassicEditor
.create(document.querySelector('#ckeditor-editor'), {
    toolbar: ['heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'fontColor', 'fontSize', 'blockQuote'],
    fontSize: {
        options: ['default', 12, 14, 16, 18, 24, 30, 36]
    },
    fontColor: {
        colors: [
            { color: 'hsl(0, 0%, 0%)', label: 'Black' },
            { color: 'hsl(0, 0%, 30%)', label: 'Dark Gray' },
            { color: 'hsl(0, 0%, 60%)', label: 'Medium Gray' },
            { color: 'hsl(0, 0%, 90%)', label: 'Light Gray' },
            { color: 'hsl(0, 0%, 100%)', label: 'White' },
        ]
    }
})
.catch(error => {
    console.error(error);
});

   