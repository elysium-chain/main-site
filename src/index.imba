import './fonts.css'
import {Arrow, Discord, Twitter, Medium, Bracket} from './icons.imba'
import backwebm from './images/intro-back.webm'
import backmp4 from './images/intro-back.mp4'
// @ts-ignore
import wallet from './images/Wallet.webm'
// @ts-ignore
import coins from './images/Coins.webm'
import wallet-poster from './images/Wallet.png'

global css html
	ff: 'Montserrat'
	c: #fff
	body
		m: 0
		bg: #000
		bgi: url('./images/noise.webp')
	h1
		m: 0
	h2
		d: flex
		fld: column
		pos: relative
		fs: 48px lh: 56px fw: 700
		m: 0
	p
		fs: 20px fw: 500 lh: 32px
		o: .5
		m: 0
	a
		pos: relative
		cursor: pointer
		d: flex ai: center g: 32px
		p: 0 m: 0 mt: 24px
		.a-icon
			pos: relative
			d: flex jc: center ai: center
			size: 64px
			bg: radial-gradient(circle at 75% 25%, #FE039A, #4E01FF)
			rd: 100%
			&:before
				content: ''
				pos: absolute
				l: 0 t: 0 b: 0 r: 4px m: auto
				s: 12px
				bd: 2px solid #fff bdl: none bdb: none
				transform: rotateZ(45deg)
		p o: 1 fw: 700
	svg
		d: block
		fill: #FFF
		stroke: none
		stroke-linejoin: round
		m: 0
		p: 0

css .section
	zi: 100
	pos: relative
	d: grid gtc: auto 1fr g: 120px
	max-width: 1200px
	m: 0 40px
	# bg: rgba(255, 255, 255, 0.01)
	# bd: 1px solid rgba(255, 255, 255, 0.04)
	# rd: 16px
	# backdrop-filter: blur(5px)
	# -webkit-backdrop-filter: blur(5px)

css .content
	d: flex
	as: start
	fld: column
	g: 48px

css .img-container
	as: start
	d: flex jc: center ai: center
	pos: relative
	# mt: 120px
	&:before
		content: ''
		pos: absolute
		# t: 0 l: 0 r: 0 b: 0 m: auto
		s: 200%
		bg: linear-gradient(-135deg, #FE039A 1%, #4E01FF 98%)
		rd: 100%
		filter: blur(100px)
		o: .11
	video
		zi:1
		s: 400px
		filter: brightness(1.5) saturate(1.5)

tag Intro
	pages = [
		{caption: 'Home', url: ''},
		{caption: 'Blog', url: ''},
		{caption: 'Outbreak Initiative', url: ''},
		{caption: 'Pioneer Programm', url: ''}
	]

	css self
		pos: relative
		.header
			zi: 100
			pos: absolute l: 0 r: 0 m: auto
			.navigation
				d: flex g: 64px
				jc: center
				>>> svg
					h: 32px
					fill: #fff
				.mirror
					transform: scaleX(-1)
				a
					fs: 12px fw: 600 ls: 0.5px tt: uppercase
					m: 24px 0
		.media
			zi: 0
			pos: relative
			d: flex jc: center
			of: hidden
			&:before
				zi: 1
				content: ''
				pos: absolute l: 0 t: 0 r: 0 b: 0
				bg: url('./images/noise.webp'), linear-gradient(to top, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 30%)
			.social-icons
				zi: 100
				pos: absolute t: 85%
				d: flex g: 40px
				mb: 40px
				>>> svg h: 24px o: .25
			.logo-name
				pos: absolute ai: center
				d: flex fld: column jc: center g: 64px
				t: 0 b: 200px m: auto
				.name
					d: flex fld: column ai: center g: 20px
					img
						w: 50%
						min-width: 400px @!380: 300px
						t: 48%
					.slogan
						d: flex jc: center
						pos: relative
						fs: 10px lh: 16px fw: 500 ls: 1em tt: uppercase
						&:before
							content: 'New world that shines'
							pos: absolute
							fs: 12px lh: 16px fw: 500 ls: 0.8em tt: uppercase ws: nowrap
							mix-blend-mode: soft-light
							filter: blur(1px)
				.logo
					pos: relative
					@keyframes logo-rotate
						from transform: rotateZ(0deg)
						to transform: rotateZ(-360deg)
					img
						min-width: 120px w: 120px
						s: 120px
						mix-blend-mode: soft-light
						animation: logo-rotate linear 45s infinite
						&:last-child
							pos: absolute t: 0
							o: 0.65
							mix-blend-mode: normal
							animation: logo-rotate linear 90s infinite
			img, video
				d: block
				m: 0 p: 0
				w: 100%
				min-width: 1600px
				object-fit: cover
				&.safari
					zi: -1
					pos: absolute

	def render
		<self>
			<.header>
				<.navigation>
					for page, id in pages
						<a> 
							<Bracket> if id == 0
							page.caption
							<Bracket.mirror> if id == 0
			<.media>
				<.social-icons>
					<a><Discord>
					<a><Twitter>
					<a><Medium>
				<.logo-name>
					<.logo>
						<img src='./images/logo.png'>
						<img src='./images/logo.png'>
					<.name>
						<img src='./images/elysium.webp'>
						<.slogan> 'New world that shines'
				<video autoplay muted loop poster='./images/intro-back.webp'>
					<source src=backmp4 type="video/mp4">
					<source src=backwebm type="video/webm">
				<img.safari src='./images/intro-back.webp'>

tag About
	def render
		<self>
			<.section>
				<.content>
					<h2> "Elysium is the next round of blockchain development in its evolutionary spiral"
					<p> "Current blockchains, even of the latest generation, bring little innovation, and in many cases go completely away from the fundamental principles on which the first breakthrough projects such as Bitcoin and Etherium were built."
					<p> "We rethought the path that the crypto industry has traveled over 15 years and saw many aspects that can be fundamentally improved. But the main thing we are striving for is to return the lightness and spirit of pioneering to the crypt."

tag Nodes
	css code
		as: start
		ff: 'Anonymous' fs: 16px
		ws: nowrap
		fs: 16px lh: 24px
		rd: 16px
		bg: rgba(255, 255, 255, 0.01)
		bd: 1px solid rgba(255, 255, 255, 0.04)
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
			<.section>
				<.img-container>
					<video src=wallet autoplay muted loop poster=wallet-poster>
				<.content>
					<h2> 'Nodes'
					<p> 'Blockchain nodes solve two difficult tasks: communicating with each other and reaching consensus. In all existing implementations, there is only one type of node to solve these two problems. Genesis provides two different types of nodes for each of the tasks: validators (responsible for consensus) and routers (responsible for communication). This allows you to run the validator node on a normal home computer. There will also be a third type – archivists to store the history of the blockchain.'
					<a>
						<.a-icon>
						<p> 'Find out why nodes are divided'
							<br>
							'into different types in Elysium'

tag Consensus
	def render
		<self>
			<.section>
				<.content>
					<h2> 'Unique consensus Proof of Victory'
					<p> 'Our unique consensus algorithm does not lose much in terms of security to the Proof of Work algorithm and, moreover, allows not only validators and routers, but also ordinary participants in the blockchain to make money on network security. In fact, it contributes to the fact that a dedicated server with a white IP address is needed only for node routers. At the same time, our consensus does not have the disadvantages of such algorithms as Proof of Work (energy consumption) and Proof of Stake (centralization and limited scalability).'
					<a>
						<.a-icon>
						<p> 'Learn more about'
							<br>
							'Proof of Victory'
				<.img-container>
					<video src=coins autoplay muted loop poster=wallet-poster>

tag Scalability
	css .section
		p: 80px
		border-width: 1px
		border-style: solid
		border-image: linear-gradient(to right top, #4E01FF, #FE039B) 1 1 1 1
	def render
		<self>
			<.section>
				<.content>
					<h2> 'Truly scalable blockchain'
					<p> 'Existing approaches to blockchain scalability start and end with sharding, which in our view is almost impossible to implement with existing blockchain architectures. Our architecture will allow us to increase the performance of the blockchain with the advent of each new validator.'
					<a>
						<.a-icon>
						<p> 'Learn more about'
							<br>
							'Elysium Scalability'
				<.img-container>
					<video src=coins autoplay muted loop poster=wallet-poster>

tag Wallet

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
					<h2> 'A new level of wallet security'
					<p> "Wallets in modern blockchains resemble rooms with open doors, whose security is only ensured by the sheer number of these 'doors'. We will add a new level of security - now, if you occupy a 'room', it will be locked and no one but you will be able to open the 'door'. In other words, if they steal the sid-phrase from you, they can't use it without confirmation from your device."
					<a>
						<.a-icon>
						<p> 'Learn More about'
							<br>
							'Elysium Wallet'
				<.img-container>
					<video src=wallet autoplay muted loop poster=wallet-poster>
				### <.attention>
					<p> 'Attention!'
					<p> 'The recovery secret phrase was used on a new device:'
					<p> 'Mac OS X, Chrome 106.0.0'
					<.btns>
						<p> 'Disable'
						<p> 'Allow' ###

tag Contracts
	css code
		pos: relative
		ff: 'Anonymous' fs: 16px lh: 24px as: start ws: nowrap
		rd: 16px
		bg: rgba(255, 255, 255, 0.01)
		bd: 1px solid rgba(255, 255, 255, 0.04)
		&:before
			zi: -1
			content: ''
			pos: absolute
			l: -50px t: -50px r: -50px b: -50px
			rd: 16px
			bg: linear-gradient(249deg, #FE039A, #4E01FF)
			filter: blur(100px) o: 0.15
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
			<.section[g: 120px]>
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
					<h2> 'Readable smart contracts and scam prevention'
					<p> 'We are developing a special DSL (Domain Specific Language), a declarative language for writing smart contracts that will not only be understandable to ordinary users (not programmers), but will allow them to create their own easily. Imperative languages like Solidity used in current blockchains allow attackers to very cleverly create loopholes that are difficult for even professionals to find. The readability and transparency of DSL will allow to completely evade most existing fraud schemes.'
					<a> 
						<.a-icon>
						<p> 'Learn more about'
							<br>
							'Elysium Smart Contracts'

tag Tokenomics
	def render
		<self>
			<.section>
				<.content>
					<h2> 'Unique tokenomics of two tokens'
					<p> 'The Genesis network will have two system tokens. The first (operating) token will be an algorithmic stablecoin, whose exchange rate will be regulated by burning commissions/issues as a reward to network members. The second (investment) token will accumulate profits as the network actively grows.'
					<a>
						<.a-icon>
						<p> 'Learn more about'
							<br>
							'Elysium Tokenomics'
				<.img-container>
					<video src=coins autoplay muted loop poster=wallet-poster>

tag Page
	css self
		# max-width: 1200px
		m: auto # p: 40px
		d: flex
		fld: column
		g: 200px
		of: hidden

	def render
		<self>
			<Intro>
			<About>
			<Nodes>
			<Scalability>
			<Consensus>
			<Wallet>
			<Contracts>
			<Tokenomics>

imba.mount <Page>