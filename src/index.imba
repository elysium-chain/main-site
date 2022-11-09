# import './fonts.css'
import {Arrow, Discord, Twitter, Medium, Bracket, Lightning} from './icons.imba'
// @ts-ignore
import favicon from './images/logo.webp'
// @ts-ignore
import wallet from './images/wallet.webm'
// @ts-ignore
import wallet-poster from './images/wallet.webp'
// @ts-ignore
import intro from './images/intro-back.webm'
// @ts-ignore
import intro-poster from './images/intro-back.webp'
// @ts-ignore
import coins from './images/coins.webm'
// @ts-ignore
import coins-poster from './images/coins.webp'
// @ts-ignore
import dice from './images/dice.webm'
// @ts-ignore
import dice-poster from './images/dice.webp'
// @ts-ignore
import chain from './images/scalability.webm'
// @ts-ignore
import chain-poster from './images/scalability.webp'

let discord-link = "https://discord.gg/elysiumchain"
let twitter-link = "https://twitter.com/elysium_chain"
let medium-link = "https://medium.com/@heap.void"

let favicon-link = document.querySelector("link[rel~='icon']")
if !favicon-link
	let link = document.createElement("link")
	link.type = "image/svg+xml"
	link.rel="icon"
	document.head.appendChild(link)
	link.href = favicon.url

css html
	ff: 'Montserrat'
	c: #fff
	bg: #000
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
	d: flex jc: center as: start
	pos: relative
	@!880 order: 1
	# &:before
	# 	content: ''
	# 	pos: absolute l: -50px b: -50px
	# 	s: 400px
	# 	bg: #FE039A
	# 	rd: 100%
	# 	o: .05
	# &:after
	# 	content: ''
	# 	pos: absolute r: 0 t: 0
	# 	s: 200px
	# 	bg: #4E01FF
	# 	# bg: linear-gradient(-135deg, #FE039A 1%, #4E01FF 98%)
	# 	rd: 100%
	# 	o: .05
	video
		# zi: 1
		pos: relative
		w: 100% max-width: 500px
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
		p: 64px 104px m: 0
		bg: linear-gradient(to right, rgba(255,255,255,.02) 0%, rgba(255,255,255,.02) 50%, rgba(255,255,255,.02) 100%), black # linear-gradient(to bottom, rgba(255,255,255,.01) 2px, transparent 2px),
		bgs: 100% 4px
		p
			zi: 100 
			pos: relative
			fs: 24px lh: 36px fw: 600 ta: center o: 1
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
					t: 0 b: 0 l: calc(100% - 25px) w: 100px
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
				bg: #EF78B1
				o: .1
				# mix-blend-mode: overlay
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
						<p> first

tag Intro
	css self
		d: flex fld: column ac: center
		ta: center @!640: left
		.media
			zi: 0
			pos: relative
			d: flex jc: center
			of: hidden
			&:before
				zi: 1
				content: ''
				pos: absolute l: 0 t: 0 r: 0 b: 0
				bg: linear-gradient(to top, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 30%)
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
						zi: 100
						w: 100%
						d: flex jc: center
						pos: relative
						fs: 10px lh: 20px fw: 500 ls: 1em tt: uppercase ta: center
						&:before
							content: 'New world that shines'
							pos: absolute
							fs: 12px lh: 20px fw: 500 ls: 0.8em tt: uppercase ta: center
							o: .2
							filter: blur(1px)
				.logo
					pos: relative
					s: 120px
					img
						w: 100%
						object-fit: cover
						o: 0.2
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
	def render
		<self>
			<.media>
				<.logo-name>
					<.logo>
						<img src='./images/logo.webp'>
						<img src='./images/logo.webp'>
					<.name>
						<img src='./images/elysium.webp'>
						<.slogan> 'New world that shines'
				<video src=intro autoplay muted loop preload="metadata" poster=intro-poster>
			<.section>
				<.content>
					<h2[max-width: 800px as: center]> 
						<span.rainbow> "Elysium"
						" is a "
						<span.rainbow> "next-generation"
						" blockchain with a many "
						<span.rainbow> "social"
						" and "
						<span.rainbow> "tech"
						" innovations."
					<p[max-width: 800px as: center]> "Current blockchains, even those of the latest generation, do not bring much innovation. In many cases, they move away from the fundamental principles of the first breakthrough projects, such as Bitcoin and Ethereum."

tag Consensus
	css em
		pos: -webkit-sticky
		pos: sticky
		t: 10px
	def render
		<self>
			<.section>
				<.img-container>
					<video src=dice autoplay muted loop poster=dice-poster preload="metadata">
				<.content>
					<h2> 'Consensus '
						<.rainbow> 'Proof of Victory'
					<p> 'Whereas Proof of Work consensus ensures randomness by the unpredictability of the answer to the problem solved by all the miners, in our Proof of Victory consensus, the validator in advance predicts the result of a function processing third-party input data. This approach completely removes the need for heavy calculations. Based on Game Theory, Proof of Victory consensus is, by its logic, a lighter and faster successor of Proof of Work.'
					<em>
						<Lightning>
						<p> 'The Proof of Victory consensus does not imply money investments to become a validator.'

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
			mt: 15px
			order: 3
			d: grid
			gtc: repeat(auto-fit, minmax(240px, 1fr))
			ac: start
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
								'of blockchain nodes'
							<p> 'Blockchain nodes solve two complex tasks: communicating with each other and achieving consensus. All existing networks have only one type of node for these two tasks. In Elysium, there are two node types for each of these duties.'
						<.node-list>
							<.node>
								<h3.rainbow> 'Router'
								<p> 'Designed to create a Single Address Space that will allow you to run a validator node even on a regular home computer behind network firewall.'
							<.node>
								<h3.rainbow> 'Validator'
								<p> 'Responsible for creating blocks of verified client transactions and reaching a consensus on canonical history of different financial instruments.'
					<em>
						<Lightning>
						<p> "A Single Address Space helps validators to process different financial instruments independently."

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
				pos: relative
				w: 100%
				min-width: 1200px
				o: .3
				filter: brightness(1.2) saturate(1.2)

	def render
		<self>
			<.section>
				<.content>
					<h2>
						<span.rainbow[fs: 120px lh: 140px fw: 800]> '100% '
						<br>
						'scalable blockchain'
					<p> 'Existing approaches to blockchain scalability begin and end with sharding, which, in our view, is virtually unrealistic with existing blockchain architectures. Single Address Space, on the contrary, will allow blockchain performance to increase with each new validator.'
			<.media>
				<video src=chain autoplay muted loop poster=chain-poster preload="metadata">

tag Wallet
	prop close-notify

	def notify
		close-notify = false
		setTimeout(&, 1200) do
			close-notify = true
			imba.commit!
	css .img-container
		pt: 52px
	css .notify
		zi: 1000
		pos: absolute
		t: 0 l: 0
		d: grid gtc: auto 1fr g: 24px ai: center
		p: 20px
		rd: 24px
		bd: 1px solid rgba(255,255,255,.05)
		bg: rgba(255,255,255,.05)
		backdrop-filter: blur(10px)
		-webkit-backdrop-filter: blur(10px)
		o: 1
		transform: scale(1)
		tween: ease 0.2s
		&.hidden
			o: 0
			transform: scale(0.85)
		.btns
			d: flex
			g: 12px
			gc: 1 / 3
			button
				cursor: pointer
				fs: 11px lh: 12px fw: 600 tt: uppercase ls: .5px
				c: rgba(255,255,255,.5)
				ol: none
				rd: 8px
				p: 12px
				w: 100%
				bd: 1px solid rgba(255,255,255,.05)
				bg: rgba(255,255,255,.1)
				tween: ease 0.2s
				&:hover
					c: rgba(255,255,255,1)
		.close
			cursor: pointer
			d: flex ai: center jc: center
			pos: absolute
			l: -10px t: -10px
			s: 24px
			rd: 100%
			bd: 1px solid rgba(255,255,255,.05)
			bg: rgba(11,11,11,1)
			bxs: 0 4px 12px 0 rgba(0,0,0,1)
			&:hover
				>>> svg
					transform: rotateZ(90deg)
					tween: ease 0.2s
			>>> svg
				s: 10px
				stroke: rgba(55,55,55)
				stroke-width: 2px
				stroke-linecap: round
				transform: rotateZ(0deg)
		img
			s: 64px rd: 12px
		.msg
			max-width: 240px
			d: flex fld: column g: 4px
			p
				fs: 14px fw: 500 lh: 20px
				&:first-child
					fw: 700 o: 1
					span
						fs: 12px fw: 500 o: .5
						float: right


	def render
		<self>
			<.section>
				<.img-container>
					<.notify.hidden=(close-notify == false)>
						<.close @click=(do notify!)>
							<svg viewBox="0 0 10 10">
								<line x1="1px" y1="1px" x2="9px" y2="9px">
								<line x1="9px" y1="1px" x2="1px" y2="9px">
						<img src='./images/logo-color.webp'>
						<.msg>
							<p> 'ATTENTION!'
								<span> '5 sec ago'
							<p> 'New device is trying to use your seed phrase.'
						<.btns>
							<button @click=(do notify!)> 'Decline'
							<button @click=(do notify!)> 'Allow'
					<video src=wallet loop autoplay muted poster=wallet-poster preload="metadata">
				<.content>
					<h2> 'A new level '
						<br>
						'of '
						<span.rainbow> 'wallet security'
					<p> "Wallets in modern blockchains resemble rooms with open doors, and their security is provided only by an enormous number of these doors. We will add a new level of protection. In Elysium, if you occupy a room, it will be locked, and no one except you will be able to open the door. In other words, if somebody steals your seed phrase, he will not be able to use it without confirmation from your device."

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
			ff: 'Anonymous Pro' fs: 16px lh: 24px as: start ws: nowrap
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
				of: auto
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
					<h2> 'Readable '
						<span.rainbow> 'smart contracts'
						' and '
						<span.rainbow> 'scam prevention'
					<p> "We are developing a special DSL (Domain Specific Language) - a simple language for writing smart contracts. Ordinary users without coding skills will be able to understand other people's contracts and create their own in a visual builder. Full-fledged languages like Solidity used in current blockchains allow attackers to create loopholes that are difficult to find, even for professionals."
					<em>
						<Lightning>
						<p> 'The readability and transparency of DSL will make impossible most of the existing fraud schemes.'
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
						for i in [0...8]
							<li> <br>

tag Tokenomics
	def render
		<self[mt: -100px]>
			<.section>
				<.img-container>
					<video src=coins loop autoplay muted poster=coins-poster preload="metadata">
				<.content>
					<h2> 'Unique tokenomics'
						<br>
						'of '
						<span.rainbow> 'two tokens'
					<p> 'There will be two system tokens on the Elysium network. The first (operational) token will be an algorithmic stablecoin tied to several fiat currencies. The second (investment) token will be highly deflationary, and there will be permanent demand for it.'
					# <Link icon=Medium url='https://link.medium.com/kpot7j5ZJub' first='Learn more about' second='Elysium Tokenomics'>

tag Outro
	css .copyright
		ta: center
		p: 40px
		fs: 16px fw: 500 o: .5 lh: 24px
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
							<p> "And we have hidden something huge! But we'll tell you about it closer to the launch. Follow us on social networks so you don't miss anything."
						<.socials>
							<Link icon=Discord url=discord-link first='Join us on Discord'>
							<Link icon=Twitter url=twitter-link first='Follow us on Twitter'>
							<Link icon=Medium url=medium-link first='Read us on Medium'>
			<.copyright> '© 2022. Elysium Team.'

tag Page
	css self
		m: auto
		d: flex
		fld: column
		g: 200px @!640: 100px
		of: hidden

	def render
		<self>
			<Intro>
			<Quote first="We have rethought the path the crypto industry has taken in 13 years and saw many areas for improvement. But our main goal is to bring back crypto's innovative spirit.">
			<Consensus>
			<Nodes>
			<Scalability>
			<Wallet>
			<Contracts>
			<Tokenomics>
			<Outro>

imba.mount <Page>