var boardEditor;
// ckEditor 적용
ClassicEditor
	.create( document.querySelector( '#cbContent' ), {
        htmlSupport: {
            allow: [
                {
                    name: /.*/,
                    attributes: true,
                    classes: true,
                    styles: true
                }
            ]
        }
//		, htmlEmbed: {
//                    showPreviews: true
//        }
		
    } )
	.then(editor => {
		boardEditor = editor;
            // 에디터에서 내용이 변경될 때마다 textarea의 값을 업데이트함
            editor.model.document.on('change:data', () => {
                document.querySelector('#cbContent').value = editor.getData();
            });
        })
	.catch( error => {
	    console.error( error );
} );

ClassicEditor
	.create( document.querySelector( '#tbContent' ), {
        htmlSupport: {
            allow: [
                {
                    name: /.*/,
                    attributes: true,
                    classes: true,
                    styles: true
                }
            ]
        }
//		, htmlEmbed: {
//                    showPreviews: true
//        }
		
    } )
	.then(editor => {
		boardEditor = editor;
            // 에디터에서 내용이 변경될 때마다 textarea의 값을 업데이트함
            editor.model.document.on('change:data', () => {
                document.querySelector('#tbContent').value = editor.getData();
            });
        })
	.catch( error => {
	    console.error( error );
} );


function updateEditorContent(editor, newContent) {
    editor.setData(newContent);
}





$(document).on('click',"#insertBoardData", function(){
	$("input[name='cbName']").val("회계팀 회의 결과 및 예산 관련 중요 안내");
    updateEditorContent(boardEditor, `<p>
    &nbsp;
</p>
<p>
    <p>
    1.예산 재조정 :<span style="-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(13, 13, 13);display:inline !important;float:none;font-family:Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-spacing:0px;">회의에서 우리는 현재 예산 상황을 검토하고, 몇 가지 부서 간의 예산을 재조정할 필요가 있다는 결론에 도달했습니다. 이에 따라 관련 부서에 변경된 예산에 대한 자세한 안내가 이루어질 것입니다.</span>
</p>
<p>
    2.회계 시스템 업그레이드 :<span style="-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(13, 13, 13);display:inline !important;float:none;font-family:Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-spacing:0px;">저희는 회계 시스템의 업그레이드를 검토하고 있습니다. 이에 따른 업그레이드 일정과 관련된 중요한 정보가 추가로 제공될 예정입니다.</span>
</p>
<p>
    3.부서별 지출 검토 :<span style="-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(13, 13, 13);display:inline !important;float:none;font-family:Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:left;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-spacing:0px;">부서별로 지출 내역을 검토하여 효율적인 비용 관리를 강조하고자 합니다. 이에 대한 추가적인 지침과 절차에 대한 안내가 이루어질 것입니다.</span>
</p>
<p>
    &nbsp;
</p>
<p style="--tw-backdrop-blur:;--tw-backdrop-brightness:;--tw-backdrop-contrast:;--tw-backdrop-grayscale:;--tw-backdrop-hue-rotate:;--tw-backdrop-invert:;--tw-backdrop-opacity:;--tw-backdrop-saturate:;--tw-backdrop-sepia:;--tw-blur:;--tw-border-spacing-x:0;--tw-border-spacing-y:0;--tw-brightness:;--tw-contain-layout:;--tw-contain-paint:;--tw-contain-size:;--tw-contain-style:;--tw-contrast:;--tw-drop-shadow:;--tw-gradient-from-position:;--tw-gradient-to-position:;--tw-gradient-via-position:;--tw-grayscale:;--tw-hue-rotate:;--tw-invert:;--tw-numeric-figure:;--tw-numeric-fraction:;--tw-numeric-spacing:;--tw-ordinal:;--tw-pan-x:;--tw-pan-y:;--tw-pinch-zoom:;--tw-ring-color:rgba(69,89,164,.5);--tw-ring-inset:;--tw-ring-offset-color:#fff;--tw-ring-offset-shadow:0 0 transparent;--tw-ring-offset-width:0px;--tw-ring-shadow:0 0 transparent;--tw-rotate:0;--tw-saturate:;--tw-scale-x:1;--tw-scale-y:1;--tw-scroll-snap-strictness:proximity;--tw-sepia:;--tw-shadow-colored:0 0 transparent;--tw-shadow:0 0 transparent;--tw-skew-x:0;--tw-skew-y:0;--tw-slashed-zero:;--tw-translate-x:0;--tw-translate-y:0;-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border:0px solid rgb(227, 227, 227);box-sizing:border-box;color:rgb(13, 13, 13);font-family:Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:1.25em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-spacing:0px;">
    위의 사항들에 대한 자세한 내용은 이번 주 내로 이메일을 통해 전달될 예정입니다. 이에 대한 질문이나 의견이 있으시면 언제든지 저희 회계팀에 문의해 주시기 바랍니다.
</p>
<p style="--tw-backdrop-blur:;--tw-backdrop-brightness:;--tw-backdrop-contrast:;--tw-backdrop-grayscale:;--tw-backdrop-hue-rotate:;--tw-backdrop-invert:;--tw-backdrop-opacity:;--tw-backdrop-saturate:;--tw-backdrop-sepia:;--tw-blur:;--tw-border-spacing-x:0;--tw-border-spacing-y:0;--tw-brightness:;--tw-contain-layout:;--tw-contain-paint:;--tw-contain-size:;--tw-contain-style:;--tw-contrast:;--tw-drop-shadow:;--tw-gradient-from-position:;--tw-gradient-to-position:;--tw-gradient-via-position:;--tw-grayscale:;--tw-hue-rotate:;--tw-invert:;--tw-numeric-figure:;--tw-numeric-fraction:;--tw-numeric-spacing:;--tw-ordinal:;--tw-pan-x:;--tw-pan-y:;--tw-pinch-zoom:;--tw-ring-color:rgba(69,89,164,.5);--tw-ring-inset:;--tw-ring-offset-color:#fff;--tw-ring-offset-shadow:0 0 transparent;--tw-ring-offset-width:0px;--tw-ring-shadow:0 0 transparent;--tw-rotate:0;--tw-saturate:;--tw-scale-x:1;--tw-scale-y:1;--tw-scroll-snap-strictness:proximity;--tw-sepia:;--tw-shadow-colored:0 0 transparent;--tw-shadow:0 0 transparent;--tw-skew-x:0;--tw-skew-y:0;--tw-slashed-zero:;--tw-translate-x:0;--tw-translate-y:0;-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border:0px solid rgb(227, 227, 227);box-sizing:border-box;color:rgb(13, 13, 13);font-family:Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:1.25em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-spacing:0px;">
    감사합니다.
</p>
<p style="--tw-backdrop-blur:;--tw-backdrop-brightness:;--tw-backdrop-contrast:;--tw-backdrop-grayscale:;--tw-backdrop-hue-rotate:;--tw-backdrop-invert:;--tw-backdrop-opacity:;--tw-backdrop-saturate:;--tw-backdrop-sepia:;--tw-blur:;--tw-border-spacing-x:0;--tw-border-spacing-y:0;--tw-brightness:;--tw-contain-layout:;--tw-contain-paint:;--tw-contain-size:;--tw-contain-style:;--tw-contrast:;--tw-drop-shadow:;--tw-gradient-from-position:;--tw-gradient-to-position:;--tw-gradient-via-position:;--tw-grayscale:;--tw-hue-rotate:;--tw-invert:;--tw-numeric-figure:;--tw-numeric-fraction:;--tw-numeric-spacing:;--tw-ordinal:;--tw-pan-x:;--tw-pan-y:;--tw-pinch-zoom:;--tw-ring-color:rgba(69,89,164,.5);--tw-ring-inset:;--tw-ring-offset-color:#fff;--tw-ring-offset-shadow:0 0 transparent;--tw-ring-offset-width:0px;--tw-ring-shadow:0 0 transparent;--tw-rotate:0;--tw-saturate:;--tw-scale-x:1;--tw-scale-y:1;--tw-scroll-snap-strictness:proximity;--tw-sepia:;--tw-shadow-colored:0 0 transparent;--tw-shadow:0 0 transparent;--tw-skew-x:0;--tw-skew-y:0;--tw-slashed-zero:;--tw-translate-x:0;--tw-translate-y:0;-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border:0px solid rgb(227, 227, 227);box-sizing:border-box;color:rgb(13, 13, 13);font-family:Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:1.25em 0px 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:pre-wrap;widows:2;word-spacing:0px;">
    회계팀 드림
</p>
</p>
<p style="-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(105, 122, 141);font-family:&quot;Public Sans&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;font-size:1
</p>`);
});