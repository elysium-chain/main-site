import './fonts.css'
import {Arrow, Discord, Twitter, Medium, Bracket, Lightning} from './icons.imba'
// @ts-ignore
import wallet from './images/wallet.webm'
// @ts-ignore
import intro from './images/intro-back.webm'
// @ts-ignore
import coins from './images/coins.webm'
// @ts-ignore
import dice from './images/dice.webm'
// @ts-ignore
import chain from './images/scalability.webm'

css html
	ff: 'Montserrat'
	c: #fff
	body
		m: 0
		bg: #000
		# bgi: url('./images/noise.webp')
	h1
		m: 0
	h2
		pos: relative
		fs: 48px lh: 60px fw: 700
		m: 0
		@!640
			fs: 32px lh: 44px
	h3
		pos: relative
		fs: 32px lh: 40px
		m: 0
	p
		fs: 20px fw: 500 lh: 32px
		o: 0.5
		m: 0
		# @!640
		# 	fs: 16px lh: 24px

css .section
	zi: 100
	pos: relative
	d: grid gtc: repeat(auto-fit, minmax(300px, 1fr))
	ai: center
	g: 40px 120px
	max-width: 1200px
	p: 0 80px @!640: 0 32px @!380: 0 24px
	m: auto

css .content
	pos: relative
	w: 100%
	d: flex fld: column
	g: 48px @!640: 32px
	@!880 order: 2

css em
	pos: relative
	d: flex g: 40px ai: center
	pt: 72px @!640: 48px
	mt: 24px @!640: 16px
	bdt: 1px solid rgba(255,255,255,.1)
	p
		font-style: normal fs: 16px lh: 28px o: 1
		max-width: 430px
	>>> svg
		h: 50px
		# fill: rgba(255,255,255,.1)
		stroke-width: 2px

css .rainbow
		bg: linear-gradient(264deg, #FE039A 1%, #4E01FF 98%)
		-webkit-background-clip: text
		-webkit-text-fill-color: transparent
		background-clip: text
		text-fill-color: transparent

css svg
	d: block
	stroke: none
	stroke-linejoin: round
	m: 0
	p: 0

css .img-container
	d: flex jc: center ai: center
	pos: relative
	@!880 order: 1
	# &:before
	# 	content: ''
	# 	pos: absolute
	# 	s: 200%
	# 	bg: linear-gradient(-135deg, #FE039A 1%, #4E01FF 98%)
	# 	rd: 100%
	# 	filter: blur(100px)
	# 	o: .11
	video
		zi:1
		w: 100%
		max-width: 500px
		filter: brightness(1.2) saturate(1.2)

tag Link
	prop icon
	prop url
	prop first
	prop second

	css self
		as: start
		a
			cursor: pointer
			d: flex ai: center g: 32px
			p: 0 m: 0
			fs: 20px lh: 32px fw: 600 c: white td: none
			.icon
				pos: relative
				s: 64px
				min-width: 64px
				rd: 100%
				of: hidden
				.medium
					>>> svg
						pos: absolute
						l: 0 r: 0 t: 0 b: 0
						m: auto
						stroke-width: 0
						fill: white
						w: 28px
				>>> svg
					circle
						size: 64px
						fill: none
						stroke-width: 2px
						tween: ease-out .2s
			&:hover
				.icon
					>>> svg
						circle
							stroke-width: 64px
							tween: ease-in .2s

	def render
		<self>
			<a href=url target="_blank">
				<.icon>
					<{icon}.medium>
					<svg viewBox="0 0 64 64">
						<circle cx="50%" cy="50%" r="30px" stroke="url(#rainbow)">
				first
				<br>
				second

tag Quote
	prop first
	prop second

	css blockquote
		zi: 10
		pos: relative
		d: block
		fs: 24px lh: 36px fw: 600 ta: center
		p: 64px 104px m: 0
		bg: linear-gradient(to right, rgba(255,255,255,.02) 0%, rgba(255,255,255,.02) 50%, rgba(255,255,255,.02) 100%), black # linear-gradient(to bottom, rgba(255,255,255,.01) 2px, transparent 2px),
		bgs: 100% 4px
		@!640
			p: 80px 40px
			ta: left
		.blur
			zi: -1
			pos: absolute l: 0px t: 0px r: 0px b: 0px
			bg: linear-gradient(264deg, #FE039A 1%, #4E01FF 98%)
			# filter: blur(100px)
			o: .15
		.shadow
			zi: -1
			pos: absolute l: 0 t: 0 r: 0 b: 0
			bg: transparnet
			bxs: 0 16px 40px 0 rgba(0,0,0,.5)
		.lighting
			pos: absolute
			t: 0 l: 0 b: 0 r: 0
			of: hidden
			&.left
				&:before
					t: 0 b: 0 r: calc(100% - 150px) w: 300px
				&:after
					t: 0 b: 0 r: calc(100% - 25px) w: 100px
			&.right
				&:before
					t: 0 b: 0 l: calc(100% - 150px) w: 300px
				&:after
					t: 0 b: 0 l: calc(100% - 25px) w: 1000px
			&:before
				content: ''
				pos: absolute
				rd: 100%
				bg: #CF528E
				o: 0.25
				# mix-blend-mode: soft-light
				filter: blur(75px)
			&:after
				content: ''
				pos: absolute
				rd: 100%
				bg: #FFF
				o: 1
				mix-blend-mode: overlay
				filter: blur(40px)
		.bracket
			pos: absolute
			of: visible
			t: -4px b: -4px
			&.left
				l: 0
				filter: drop-shadow(2px 0 1px rgba(0,0,0,.35))
			&.right
				r: 0
				filter: drop-shadow(2px 0 1px rgba(0,0,0,.35))
				transform: scaleX(-1)
			>>> svg
				m: 0
				fill: #D66CDE
	def render
		<self>
			<.section>
				<.content>
					<blockquote>
						<.bracket.left>
							<svg width="4" height="5" viewBox="0 0 4 5">
								<path d="M0 5H2V4.65686C2 3.8612 2.31607 3.09814 2.87868 2.53553L3.70711 1.70711C4.09763 1.31658 4.09763 0.683419 3.70711 0.292893C3.31658 -0.097631 2.68342 -0.097631 2.29289 0.292893L1.46447 1.12132C0.526784 2.059 0 3.33077 0 4.65686V5Z">
							<svg[h: calc(100% - 10px) w: 2px]>
								<rect width="2" height="100%">
							<svg[transform: scaleY(-1)] width="4" height="5" viewBox="0 0 4 5">
								<path d="M0 5H2V4.65686C2 3.8612 2.31607 3.09814 2.87868 2.53553L3.70711 1.70711C4.09763 1.31658 4.09763 0.683419 3.70711 0.292893C3.31658 -0.097631 2.68342 -0.097631 2.29289 0.292893L1.46447 1.12132C0.526784 2.059 0 3.33077 0 4.65686V5Z">
						<.bracket.right>
							<svg width="4" height="5" viewBox="0 0 4 5">
								<path d="M0 5H2V4.65686C2 3.8612 2.31607 3.09814 2.87868 2.53553L3.70711 1.70711C4.09763 1.31658 4.09763 0.683419 3.70711 0.292893C3.31658 -0.097631 2.68342 -0.097631 2.29289 0.292893L1.46447 1.12132C0.526784 2.059 0 3.33077 0 4.65686V5Z">
							<svg[h: calc(100% - 10px) w: 2px]>
								<rect width="2" height="100%">
							<svg[transform: scaleY(-1)] width="4" height="5" viewBox="0 0 4 5">
								<path d="M0 5H2V4.65686C2 3.8612 2.31607 3.09814 2.87868 2.53553L3.70711 1.70711C4.09763 1.31658 4.09763 0.683419 3.70711 0.292893C3.31658 -0.097631 2.68342 -0.097631 2.29289 0.292893L1.46447 1.12132C0.526784 2.059 0 3.33077 0 4.65686V5Z">
						<.lighting.left>
						<.lighting.right>
						<.blur>
						# <.shadow>
						first
						<br>
						second

tag Intro
	pages = [
		{caption: 'Intro', url: ''},
		{caption: 'Consensus', url: ''},
		{caption: 'Nodes', url: ''},
		{caption: 'Scalability', url: ''}
		{caption: 'Wallet', url: ''}
		{caption: 'Smart contracts', url: ''}
		{caption: 'Tokenomics', url: ''}
		{caption: 'Pioneer Program', url: ''}
	]

	css self
		pos: relative
		d: flex fld: column ac: center
		ta: center @!640: left
		.header
			zi: 1000
			pos: fixed l: 0 r: 0 m: auto
			bg: rgba(0,0,0,.1)
			backdrop-filter: blur(10px)
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
				bg: linear-gradient(to top, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 30%) # url('./images/noise.webp'),
			.logo-name
				pos: absolute ai: center
				d: flex fld: column jc: center g: 64px
				t: 0 b: 280px m: auto
				.name
					d: flex fld: column ai: center g: 20px
					p: 0 40px
					img
						w: 100%
						min-width: 300px @!380: 300px
						t: 48%
					.slogan
						w: 100%
						d: flex jc: center
						pos: relative
						fs: 10px lh: 20px fw: 500 ls: 1em tt: uppercase ta: center
						&:before
							content: 'New world that shines'
							pos: absolute
							fs: 12px lh: 20px fw: 500 ls: 0.8em tt: uppercase ta: center
							mix-blend-mode: soft-light
							filter: blur(1px)
				.logo
					pos: relative
					s: 120px
					img
						w: 100%
						mix-blend-mode: soft-light
						object-fit: cover
						&:last-child
							pos: absolute t: 0 l: 0
							o: 0.65
							mix-blend-mode: normal
			video
				d: block
				m: 0 p: 0
				w: 100%
				min-width: 1600px
				object-fit: cover
				# filter: brightness(1.2) saturate(1.1)
	def render
		<self>
			# <.header>
			# 	<.navigation>
			# 		for page, id in pages
			# 			<a> 
			# 				page.caption
			<.media>
				<.logo-name>
					<.logo>
						<img src='./images/logo.png'>
						<img src='./images/logo.png'>
					<.name>
						<img src='./images/elysium.webp'>
						<.slogan> 'New world that shines'
				<video autoplay muted loop poster='./images/intro-back.webp'>
					<source src=intro type="video/webm">
			<.section>
				<.content>
					<h2[max-width: 800px as: center]> 
						<span.rainbow> "Elysium"
						" is the "
						<span.rainbow> "next round"
						" of blockchain development in its "
						<span.rainbow> "evolutionary spiral."
					<p[max-width: 800px as: center]> "Current blockchains, even of the latest generation, bring little innovation, and in many cases go completely away from the fundamental principles on which the first breakthrough projects such as Bitcoin and Etherium were built."

tag Consensus
	def render
		<self>
			<.section>
				<.img-container>
					<video src=dice autoplay muted loop poster='./images/Dice.webp'>
				<.content>
					<h2> 'Consensus '
						<.rainbow> 'Proof of Victory'
					<p> 'Despite the fact that our consensus algorithm, albeit to a small extent, still loses in security to the Proof of Work algorithm, it does not have such disadvantages as power consumption (PoW) and centralization and limited scalability (PoS).'
					<em>
						<Lightning>
						<p> 'In addition, our consensus allows not only validators and routers, but also ordinary participants in the blockchain to make money on network security.'

tag Nodes

	css .bg-container
		d: flex fld: column
		g: 48px @!640: 32px
		p: 80px @!640: 40px
		# bg: linear-gradient(to top right, rgba(255,255,255,0), rgba(255,255,255,.05))
		bw: 1px
		bs: solid
		border-image: linear-gradient(to right top, #4E01FF, #FE039B) 1 1 1 1
		backdrop-filter: blur(10px)

		.grid
			d: grid
			gtc: repeat(auto-fit, minmax(240px, 1fr))
			g: 64px 120px @!640: 40px

		.node-list
			order: 3
			d: grid
			gtc: repeat(auto-fit, minmax(200px, 1fr))
			g: 64px 80px @!640: 40px
			p fs: 16px lh: 28px
			.node
				d: flex fld: column g: 16px ai: start

	def render
		<self>
			<.section>
				<.bg-container>
					<.grid>
						<.content>
							<h2> 'Two types'
								<br>
								'of chain nodes'
							<p> 'Blockchain nodes solve two difficult tasks: communicating with each other and reaching consensus. In all existing networks, there is only one type of nodes to solve these two problems. Elysium provides two different types of nodes for each of the tasks.'
						<.node-list>
							<.node>
								<h3.rainbow> 'Router'
								<p> 'Validators are responsible for consensus, and routers are responsible for communication. Validators are responsible for consensus'
							<.node>
								<h3.rainbow> 'Validator'
								<p> 'Validators are responsible for consensus, and routers are responsible for communication. Validators are responsible for consensus Validators are responsible for consensus'
					<em>
						<Lightning>
						<p> 'This approach allows you to run the validator node even on a regular home computer.'

tag Scalability
	css self
		pos: relative
		m: -200px 0
		.section
			pos: absolute
			l: 0 r: 0 b: 0 t: 0 m: auto
			ai: center
			.content
				# p: 0 80px
				# pt: 34%
				max-width: calc(800px - 160px)
				m: auto
				# as: center
				ta: center
		.media
			pos: relative
			d: flex jc: center
			&:before
				zi: 1
				content: ''
				pos: absolute l: 0 t: 0 r: 0 b: 0
				bg: linear-gradient(to top, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 30%), linear-gradient(to bottom, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 30%) # url('./images/noise.webp'),
			video
				w: 100%
				min-width: 1200px
				o: .3
				filter: brightness(1.2) saturate(1.2)

	def render
		<self>
			<.section>
				<.content>
					<h2>
						<span.rainbow[fs: 80px fw: 800]> '100% '
						<br>
						'scalable blockchain'
					<p> 'Existing approaches to blockchain scalability start and end with sharding, which in our view is almost impossible to implement with existing blockchain architectures. Our architecture will allow us to increase the performance of the blockchain with the advent of each new validator.'
			<.media>
				<video src=chain autoplay muted loop poster='./images/scalability.webp'>

tag Wallet
	def render
		<self>
			<.section>
				<.img-container>
					<video loop autoplay muted poster='./images/wallet.webp'>
						<source src=wallet type='video/webm; codecs="vp9, vorbis"'>
				<.content>
					<h2> 'A new level '
						<br>
						'of '
						<span.rainbow> 'wallet security'
					<p> "Wallets in modern blockchains resemble rooms with open doors, the security of which is provided only by a huge number of these doors. We are adding a new level of protection - a key, without which no one but you can open the door. Simply put, if your seed phrase is stolen from you, then no one will be able to use it without your confirmation."

tag Contracts
	css .section
		jc: space-between
		pos: relative
		# &:before
		# 	zi: -1
		# 	content: ''
		# 	pos: absolute
		# 	l: -50px t: -50px r: -50px b: -50px
		# 	rd: 16px
		# 	bg: linear-gradient(249deg, #FE039A, #4E01FF)
		# 	filter: blur(200px) o: 0.1
		code
			pt: 40px
			# bg: rgba(255, 255, 255, 0.01)
			# bd: 1px solid rgba(255, 255, 255, 0.04)
			bw: 1px
			bs: solid
			border-image: linear-gradient(to right top, #4E01FF, #FE039B) 1 1 1 1
			of: hidden
			pos: relative
			ff: 'Anonymous' fs: 16px lh: 24px as: start ws: nowrap
			.head
				pos: absolute
				l: 0 r: 0 t: 0
				d: flex
				g: 6px
				p: 12px
				bw: 1px
				bs: solid
				border-image: linear-gradient(to right top, #4E01FF -50%, #FE039B 70%) 0 0 1 0
				.btn
					size: 12px
					rd: 100%
					bg: rgba(255, 255, 255, 0.05)
			ol
				of: scroll
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
		.content
			as: end
			max-width: 600px
			m: 0 120px 80px 0

	def render
		<self>
			<.section>
				<.content>
					<h2> 'Simple and readable'
						<.rainbow> 'smart contracts'
					<p> 'Imperative languages ​​like Solidity used in current blockchains allow fraudsters to very cleverly create loopholes that are difficult to find even for professionals. We are developing a special DSL (Domain Specific Language) – a declarative language for smart contracts, which will not only be understandable to ordinary users (non-programmers), but will also allow them to easily and easily create their own.'
					<em>
						<Lightning>
						<p> 'The readability and transparency of DSL will allow you to completely get away from most of the existing fraud schemes.'
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
						for i in [0...7]
							<li> <br>

tag Tokenomics
	def render
		<self[mt: -100px]>
			<.section>
				<.img-container>
					<video loop autoplay muted poster='./images/coins.webp'>
						<source src=coins type='video/webm; codecs="vp9, vorbis"'>
				<.content>
					<h2> 'Unique tokenomics'
						<br>
						'of '
						<span.rainbow> 'two tokens'
					<p> 'There will be two system tokens on the Elysium network. The first (operational) token is an algorithmic stablecoin, the rate of which will be regulated by burning fees / emission as a reward to network participants. The second (investment) token will accumulate profit in itself with the active growth of the network.'
					<Link icon=Medium url='https://link.medium.com/kpot7j5ZJub' first='Learn more about' second='Elysium Tokenomics'>

tag Outro
	css .copyright
		ta: center
		p: 40px
		fs: 16px fw: 500 o: .5
	css .bg-container
		d: flex fld: column
		g: 48px @!640: 32px
		p: 80px @!640: 40px
		# bg: linear-gradient(to top right, rgba(255,255,255,0), rgba(255,255,255,.05))
		bw: 1px
		bs: solid
		border-image: linear-gradient(to right top, #4E01FF, #FE039B) 1 1 1 1
		backdrop-filter: blur(10px)
		.grid
			d: grid
			gtc: repeat(auto-fit, minmax(240px, 1fr))
			g: 64px 120px @!640: 40px
			.socials
				order: 3
				d: flex fld: column g: 22px

	def render
		<self>
			<.section>
				<.bg-container>
					<.grid>
						<.content>
							<h2> 'To be continued...'
							<p> "And there will be something else really grandiose... But we will tell about it closer to the launch of the mainnet. Follow us on social networks so you don't miss anything."
						<.socials>
							<Link icon=Discord url='https://discord.gg/Ykp5mCXWZ3' first='Join us on Discord'>
							<Link icon=Twitter url='https://twitter.com/elysium_chain' first='Follow us on Twitter'>
							<Link icon=Medium url='https://medium.com/@heap.void' first='Read us on Medium'>
			<.copyright> '© 2022. Elysium, true dezentralized blockchain.'

tag Page
	css self
		m: auto
		d: flex
		fld: column
		g: 200px @!640: 100px
		of: hidden

	def render
		br = <br>
		<self>
			<Intro>
			<Quote first="We rethought the path that the crypto industry has traveled over 15 years and saw many aspects that can be fundamentally improved. But the main thing we are striving for is to return the lightness and spirit of pioneering to the crypto.">
			<Consensus>
			<Nodes>
			<Scalability>
			<Wallet>
			<Contracts>
			<Tokenomics>
			<Outro>

imba.mount <Page>