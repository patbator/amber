Object subclass: #CanvasRenderingContext
	{'self.arc(aPoint._x(), aPoint._y(), aNumber, aNumber2, aNumber3, aBoolean)'} 
	self arcTo: aPoint radius: aNumber startAngle: 0 endAngle: Number pi * 2 anticlockwise: false
	{'self.fillStyle = String(aString)'}
	{'self.beginPath()'}
	{'self.closePath()'}
	{'self.fill()'}
	{'self.stroke()'}
	{'self.moveTo(aPoint._x(), aPoint._y())'}
	{'self.lineTo(aPoint._x(), aPoint._y())'}
	{'self.strokeStyle = String(aString)'}
	{'self.lineWidth = aNumber'}
	{'self.fillRect(aPoint._x(), aPoint._y(), anotherPoint._x(), anotherPoint._y())'}
	{'self.strokeRect(aPoint._x(), aPoint._y(), anotherPoint._x(), anotherPoint._y())'}
	{'self.fillRect(aPoint._x(), aPoint._y(), anotherPoint._x(), anotherPoint._y())'}
	{'return aTagBrush._element().getContext(''2d'')'}
    aJQuery appendElement: root element

    root := aTagBrush

    ^root

    ^self root with: anObject

    super initialize.
    root := TagBrush fromString: 'div' canvas: self

    ^TagBrush fromString: aString canvas: self

    ^root addBrush: (self newTag: aString)

    ^self tag: 'h1'

    ^self tag: 'h2'

    ^self tag: 'h3'

    ^self tag: 'h4'

    ^self tag: 'h5'

    ^self tag: 'h6'

    ^self tag: 'p'

    ^self tag: 'div'

    ^self tag: 'span'

    ^self tag: 'img'

    ^self tag: 'ul'

    ^self tag: 'ol'

    ^self tag: 'li'

    ^self tag: 'table'

    ^self tag: 'tr'

    ^self tag: 'td'

    ^self tag: 'th'

    ^self tag: 'form'

    ^self tag: 'input'

    ^self tag: 'button'

    ^self tag: 'select'

    ^self tag: 'option'

    ^self tag: 'textarea'

    ^self tag: 'a'

	^self tag: 'canvas'

    ^element

    self asJQuery empty.
    self append: anObject

    self appendChild: aTagBrush element.
    ^aTagBrush

    self append: anObject

    anObject appendToBrush: self

    aTagBrush addBrush: self

    | root |
    root := canvas root.
    canvas root: self.
    aBlock value: canvas.
    canvas root: root

    {'self[''@element''].appendChild(anElement)'}

    self appendChild: (self createTextNodeFor: aString)

    {'self[''@element''].setAttribute(aString, aValue)'}

    {'self[''@element''].removeAttribute(aString)'}

    self at: 'class' put: aString

    self at: 'id' put: aString

    self  at: 'src' put: aString

    self at: 'href' put: aString

    self at: 'title' put: aString

    self at: 'style' put: aString

	{'return smalltalk.JQuery._from_(jQuery(self[''@element'']))'}

    aBlock value: self asJQuery

    self asJQuery on: 'keydown' do: aBlock

    self asJQuery on: 'keypress' do: aBlock

    self asJQuery on: 'keyup' do: aBlock

    self asJQuery on: 'focus' do: aBlock

    self asJQuery on: 'blur' do: aBlock

    self asJQuery on: 'change' do: aBlock

    self asJQuery on: 'click' do: aBlock

    element := self createElementFor: aString.
    canvas := aCanvas

	{'return document.createElement(String(aString))'}

	{'return document.createTextNode(String(aString))'}

    ^self new
	initializeFromString: aString canvas: aCanvas;
	yourself

    ^root

    {'alert(aString)'}

    {'return window.confirm(aString)'}

    ^self prompt: aString default: ''

    {'return window.prompt(aString, anotherString)'}

    | canvas |
    canvas := HTMLCanvas new.
    canvas root: self root.
    self root asJQuery empty.
    self renderOn: canvas

    self appendToJQuery: aTagBrush asJQuery

    self render.
    aJQuery append: self root asJQuery

    | canvas |
    canvas := HTMLCanvas new.
    root := canvas root.
    self renderOn: canvas

    self

	canvas := aCanvas
	{'return document.createElement(''canvas'')'}
	^self new
		initializeWithCanvas: aCanvas;
		yourself
    aTagBrush append: self asString

    aTagBrush appendBlock: self
    aTagBrush appendString: self
