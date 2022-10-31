import './fonts.css'
// @ts-ignore
import wallet from './images/Wallet.webm'
import wallet-poster from './images/Wallet.png'

global css html
	ff: 'Montserrat'
	c: #cecece
	body
		m: 0
		bg: #000
		# bgi: url('./images/noise.png')
	h1
		ff: 'Playfair'
	h2
		d: flex
		fld: column
		pos: relative
		ff:'Playfair' fs:48px fw:600 lh:64px ls:1 tt:uppercase c:#fff
		m:0
		&:before
			content:'Genesis'
			ff: 'Montserrat' fs:12px fw:600 lh:20px ls:2.5 c:#fff o:0.25
			m:0 mb:-12px
	p
		ff: 'Montserrat' fs:16px fw:500 lh:32px
		m:0
	button
		pos: relative
		cursor: pointer
		d: flex
		as: start
		ol: none
		bd: none
		bg: none
		p: 0 m: 0 pl: 72px
		ff: 'Montserrat' fs:14px fw:600 lh:24px c:#FFF ta: left
		&:before
			content: ''
			pos:absolute l:0 t:0 b:0
			m:auto
			size: 48px
			bg: linear-gradient(to bottom left, #00FBFF, #D800FF)
			bxs: inset 0 1px 0 0 rgba(255,255,255,0.5), inset 0 -1px 0 0 rgba(0,0,0,0.25), inset 0 -8px 16px 0 rgba(0,0,0,.5), 0 8px 24px 0 rgba(216, 0, 255, 0.25)
			rd: 100%
		&:after
			pos:absolute l:17px t:0 b:0
			m:auto
			content: ''
			size: 8px
			transform: rotateZ(45deg)
			# bg: white
			bd: none
			bdt: 2px solid white
			bdr: 2px solid white
			filter: drop-shadow(0 1px rgba(0,0,0,.25))

css .section
	zi: 100
	pos: relative
	d: grid
	gtc: auto 1fr
	g: 120px
	bg: rgba(255, 255, 255, 0.01)
	bd: 1px solid rgba(255, 255, 255, 0.04)
	rd: 16px
	p: 120px
	# backdrop-filter: blur(5px)
	# -webkit-backdrop-filter: blur(5px)

css .content
	d: flex
	as: start
	fld: column
	g: 40px

tag Nodes
	css self
		zi: 100
		d: grid
		gtc: min-content auto
		g: 120px
		p: 0 120px

	css code
		as: start
		ff: 'Anonymous' fs: 16px
		ws: nowrap
		fs: 16px lh: 24px
		rd: 16px
		bg: rgba(255, 255, 255, 0.01)
		bd: 1px solid rgba(255, 255, 255, 0.04)
		# of: hidden
		.head
			d: flex
			g: 6px
			p: 12px
			bdb: 1px solid rgba(255, 255, 255, 0.04)
			.btn
				size: 12px
				rd: 100%
				bg: rgba(255, 255, 255, 0.05)

		ol
			m: 0 p: 16px 40px 20px 58px
			list-style-type: none
			counter-reset: num
			li
				pos: relative
				m: 0
				&:before
					pos: absolute
					content: counter(num)
					counter-increment: num
					t: 0px r: 100% mr: 20px
					o: 0.15

	def render
		<self>
			<.img-container>
				<video src=wallet autoplay muted loop poster=wallet-poster>
			<.content>
				<h2> 'Nodes'
				<p> 'Blockchain nodes solve two difficult tasks: communicating with each other and reaching consensus. In all existing implementations, there is only one type of node to solve these two problems. Genesis provides two different types of nodes for each of the tasks: validators (responsible for consensus) and routers (responsible for communication). This allows you to run the validator node on a normal home computer. There will also be a third type – archivists to store the history of the blockchain.'
				<button> 
					<.icon>
					'Find out why nodes are divided'
					<br>
					'into different types in Genesis'

tag Wallet
	css self
		pos: relative

	css .img-container
		as: start
		d:flex
		pos: relative
		mt:120px
		&:before
			content: ''
			pos: absolute
			b:0px l:0px
			size: 174px
			bg: rgba(30, 187, 187, .2)
			rd: 100%
			filter: blur(50px)
		&:after
			content: ''
			pos: absolute
			t:0 r:0
			size: 174px
			bg: rgba(156, 30, 187, 0.2)
			rd: 100%
			filter: blur(50px)
		video
			zi:1

	css .attention
		zi:100
		pos: absolute
		d:flex fld:column ai: center fl: 1 1
		max-width: 248px
		t: -64px r: 96px
		bg: rgba(255, 255, 255, 0.05)
		bd: 1px solid rgba(255, 255, 255, 0.05)
		rd: 16px
		p: 32px
		backdrop-filter: blur(5px)
		-webkit-backdrop-filter: blur(5px)
		p
			fs: 13px lh:20px
			ta:center
			m: 16px 0 8px 0
			&:nth-child(1)
				fs: 14px lh:20px tt:uppercase fw:700 ls:1 m:0
			&:nth-child(3)
				fs: 13px lh:24px fw:700 m:0
		.btns
			d: flex
			g: 16px
			w: 100%
			mt: 24px
			p
				cursor: default
				fl: 1 1
				fs: 12px lh:24px fw: 700 tt: uppercase c: #000
				p: 8px m:0
				rd: 8px
				&:first-child
					bg: #FF4343
				&:last-child
					bg: #60CE3A

	def render
		<self>
			<.section>
				<.content>
					<h2> 'Wallet'
					<p> "Wallets in modern blockchains resemble rooms with open doors, whose security is only ensured by the sheer number of these 'doors'. We will add a new level of security - now, if you occupy a 'room', it will be locked and no one but you will be able to open the 'door'. In other words, if they steal the sid-phrase from you, they can't use it without confirmation from your device."
					<button>
						'Learn More about'
						<br>
						'Genesis Wallet'
				<.img-container>
					<video src=wallet autoplay muted loop poster=wallet-poster>
				<.attention>
					<p> 'Attention!'
					<p> 'The recovery secret phrase was used on a new device:'
					<p> 'Mac OS X, Chrome 106.0.0'
					<.btns>
						<p> 'Disable'
						<p> 'Allow'

tag Contracts
	css self
		zi: 100
		d: grid
		gtc: min-content auto
		g: 120px
		# pr: 120px

	css code
		as: start
		ff: 'Anonymous' fs: 16px
		ws: nowrap
		fs: 16px lh: 24px
		rd: 16px
		bg: rgba(255, 255, 255, 0.01)
		bd: 1px solid rgba(255, 255, 255, 0.04)
		# of: hidden
		.head
			d: flex
			g: 6px
			p: 12px
			bdb: 1px solid rgba(255, 255, 255, 0.04)
			.btn
				size: 12px
				rd: 100%
				bg: rgba(255, 255, 255, 0.05)

		ol
			m: 0 p: 16px 40px 20px 58px
			list-style-type: none
			counter-reset: num
			li
				pos: relative
				m: 0
				&:before
					pos: absolute
					content: counter(num)
					counter-increment: num
					t: 0px r: 100% mr: 20px
					o: 0.15

	def render
		<self>
			<code>
				<.head>
					<.btn>
					<.btn>
					<.btn>
				<ol>
					<li>
						<span[c:#588AC5]> 'When'
						<span[c:#C17EC2]> ' Contract'
						<span[c:#D09273]> ' created'
					<li>
						<span[c:#588AC5]> 'Then'
						<span[c:#D09273]> ' mint'
						<span[c:#61B49F]> ' 3000 tokens'
						<span> ' to'
						<span[c:#C17EC2]> ' Owner'
					<li><br>
					<li>
						<span[c:#588AC5]> 'When'
						<span[c:#C17EC2]> ' User'
						<span[c:#D09273]> ' sends'
						<span[c:#61B49F]> ' 100 Cash'
						' to'
						<span[c:#C17EC2]> ' Deposit'
					<li>
						<span[c:#588AC5]> 'And'
						<span[c:#C17EC2]> ' Date'
						' < '
						<span[c:#61B49F]> '03.04.2024'
					<li>
						<span[c:#588AC5]> 'Then'
						<span[c:#D09273]> ' mint'
						<span[c:#61B49F]> ' NFT(1,6)'
						' to'
						<span[c:#C17EC2]> ' User'
					<li><br>
					<li>
						<span[c:#588AC5]> 'When'
						<span[c:#C17EC2]> ' Contract'
						<span[c:#D09273]> ' state changes'
						' to'
						<span[c:#C17EC2]> ' Fulfilled'
					<li>
						<span[c:#588AC5]> 'Then'
						' for'
						<span[c:#C17EC2]> ' each User'
					<li>
						<span[c:#588AC5]> 'Which'
						<span[c:#D09273]> ' invested'
						<span[c:#61B49F]> ' 100 tokens'
					<li>
						<span[c:#588AC5]> 'And which'
						<span[c:#D09273]> ' state'
						' is'
						<span[c:#C17EC2]> ' Active'
					<li>
						<span[c:#588AC5]> 'Do'
						<span[c:#D09273]> ' send'
						<span[c:#61B49F]> ' 120 Cash'
						' from'
						<span[c:#C17EC2]> ' Deposit'
					<li><br>
					<li><br>
					<li><br>
			<.content>
				<h2> 'Smart Contracts'
				<p> 'We are developing a special DSL (Domain Specific Language), a declarative language for writing smart contracts that will not only be understandable to ordinary users (not programmers), but will allow them to create their own easily. Imperative languages like Solidity used in current blockchains allow attackers to very cleverly create loopholes that are difficult for even professionals to find. The readability and transparency of DSL will allow to completely evade most existing fraud schemes.'
				<button> 
					<.icon>
					'Learn more about'
					<br>
					'Genesis Smart Contracts'

tag Tokenomics
	css self
		pos: relative

	css .img-container
		as: start
		d:flex
		pos: relative
		mt:120px
		&:before
			content: ''
			pos: absolute
			b:0px l:0px
			size: 174px
			bg: rgba(30, 187, 187, .2)
			rd: 100%
			filter: blur(50px)
		&:after
			content: ''
			pos: absolute
			t:0 r:0
			size: 174px
			bg: rgba(156, 30, 187, 0.2)
			rd: 100%
			filter: blur(50px)
		video
			zi:1

	def render
		<self>
			<.section>
				<.content>
					<h2> 'Tokenomics'
					<p> 'The Genesis network will have two system tokens. The first (operating) token will be an algorithmic stablecoin, whose exchange rate will be regulated by burning commissions/issues as a reward to network members. The second (investment) token will accumulate profits as the network actively grows.'
					<button>
						'Learn More about'
						<br>
						'Genesis Tokenomics'
				<.img-container>
					<video src=wallet autoplay muted loop poster=wallet-poster>

tag Page
	css self
		max-width: 1200px
		m: auto p: 40px
		d: flex
		fld: column
		g: 120px

	def render
		<self>
			<Nodes>
			<Wallet>
			<Contracts>
			<Tokenomics>

imba.mount <Page>