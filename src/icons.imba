export tag Arrow
	def render
		<self>
			<svg viewBox="0 0 10 16">
				<path d="M7.74578 7.29289C8.12972 7.68342 8.12972 8.31658 7.74578 8.70711L2.83012 13.7071C2.64575 13.8946 2.39569 14 2.13494 14H0.983132C0.440163 14 -1.89239e-07 14.4477 -1.89239e-07 15C-1.89239e-07 15.5523 0.440163 16 0.983132 16H2.13494C2.91717 16 3.66736 15.6839 4.22048 15.1213L9.13614 10.1213C10.288 8.94975 10.288 7.05025 9.13614 5.87868L4.22048 0.878679C3.66736 0.31607 2.91717 0 2.13494 0H0.983132C0.440163 0 -1.89239e-07 0.447715 -1.89239e-07 1C-1.89239e-07 1.55229 0.440163 2 0.983132 2H2.13494C2.39569 2 2.64575 2.10536 2.83012 2.29289L7.74578 7.29289Z">

export tag Discord
	prop fill-color
	prop stroke-color

	def render
		<self>
			<svg viewBox="0 0 34 24" fill=fill-color stroke=stroke-color>
				<path d="M29.3266 2.02697C29.3171 2.01 29.3015 1.99671 29.2824 1.98947C27.078 1.05243 24.7517 0.384243 22.3618 0.00163895C22.3401 -0.00210093 22.3176 0.000597065 22.2977 0.00934923C22.2777 0.0181014 22.2612 0.0324621 22.2506 0.0503891C21.9338 0.583045 21.6463 1.13017 21.389 1.68968C18.8128 1.32737 16.1923 1.32737 13.6161 1.68968C13.3571 1.12875 13.0649 0.581488 12.7409 0.0503891C12.7298 0.0328517 12.7132 0.0188217 12.6934 0.0101264C12.6735 0.0014311 12.6513 -0.0015265 12.6296 0.00163895C10.2394 0.38344 7.91301 1.05167 5.70889 1.98952C5.69002 1.99693 5.6741 2.00958 5.66332 2.02573C1.25551 8.12422 0.0480383 14.0728 0.640381 19.9476C0.642047 19.962 0.646822 19.976 0.654421 19.9886C0.66202 20.0013 0.672288 20.0124 0.684615 20.0213C3.25125 21.7819 6.12205 23.1259 9.17453 23.9957C9.19602 24.0017 9.21898 24.0014 9.2403 23.9949C9.26163 23.9885 9.2803 23.9761 9.29382 23.9595C9.94942 23.133 10.5303 22.2579 11.0307 21.3429C11.0375 21.3304 11.0415 21.3166 11.0422 21.3026C11.0429 21.2885 11.0404 21.2745 11.0348 21.2614C11.0292 21.2483 11.0207 21.2364 11.0099 21.2266C10.999 21.2167 10.986 21.2091 10.9717 21.2043C10.0557 20.8796 9.16882 20.4881 8.31949 20.0336C8.30406 20.0252 8.29111 20.0134 8.28176 19.9993C8.27242 19.9851 8.26698 19.9691 8.26592 19.9525C8.26487 19.936 8.26823 19.9194 8.2757 19.9044C8.28318 19.8893 8.29455 19.8762 8.3088 19.8661C8.48701 19.7424 8.66533 19.6138 8.83551 19.4838C8.85063 19.4723 8.86892 19.4649 8.88833 19.4624C8.90774 19.46 8.9275 19.4627 8.94537 19.4701C14.5097 21.8228 20.5337 21.8228 26.0322 19.4701C26.0501 19.4622 26.0701 19.4592 26.0897 19.4614C26.1094 19.4636 26.1281 19.4709 26.1434 19.4826C26.3137 19.6125 26.4919 19.7424 26.6715 19.8661C26.6858 19.8761 26.6973 19.8891 26.7049 19.9041C26.7124 19.9191 26.7159 19.9356 26.715 19.9522C26.7141 19.9687 26.7088 19.9848 26.6995 19.999C26.6903 20.0132 26.6775 20.0251 26.6621 20.0336C25.8147 20.4919 24.927 20.8832 24.0086 21.2031C23.9943 21.2081 23.9814 21.2159 23.9706 21.2259C23.9598 21.2358 23.9514 21.2478 23.9459 21.261C23.9404 21.2742 23.938 21.2884 23.9389 21.3025C23.9397 21.3166 23.9438 21.3304 23.9508 21.3429C24.4595 22.2528 25.0395 23.1268 25.6863 23.958C25.6994 23.9751 25.718 23.9879 25.7394 23.9946C25.7608 24.0014 25.7839 24.0017 25.8056 23.9955C28.8635 23.1287 31.7393 21.7846 34.3092 20.0213C34.3217 20.0128 34.3321 20.002 34.3397 19.9895C34.3474 19.977 34.352 19.9632 34.3534 19.9489C35.0626 13.1569 33.1662 7.25711 29.3266 2.02697ZM11.8616 16.3704C10.1864 16.3704 8.80602 14.9461 8.80602 13.1969C8.80602 11.4477 10.1596 10.0233 11.8616 10.0233C13.577 10.0233 14.944 11.4601 14.9172 13.1968C14.9172 14.9461 13.5635 16.3704 11.8616 16.3704ZM23.1592 16.3704C21.484 16.3704 20.1036 14.9461 20.1036 13.1969C20.1036 11.4477 21.4572 10.0233 23.1592 10.0233C24.8746 10.0233 26.2415 11.4601 26.2148 13.1968C26.2148 14.9461 24.8746 16.3704 23.1592 16.3704Z">

export tag Twitter
	prop fill-color
	prop stroke-color

	def render
		<self>
			<svg viewBox="0 0 28 24" fill=fill-color stroke=stroke-color>
				<path d="M25.2178 3.80193C26.4747 2.98665 27.3068 1.87384 27.7144 0.458599C26.4918 1.14403 25.2738 1.61414 24.0575 1.87384C22.964 0.63119 21.5796 0 19.9199 0C18.2976 0 16.9272 0.601603 15.8088 1.77193C14.6966 2.95048 14.1351 4.38217 14.1351 6.05383C14.1351 6.56174 14.1958 7.01541 14.3171 7.40004C9.53249 7.22745 5.57226 5.13006 2.45199 1.09308C1.92313 2.08095 1.6587 3.08691 1.6587 4.12739C1.6587 6.26587 2.51265 7.96055 4.21745 9.20485C3.24528 9.11773 2.38822 8.85802 1.6587 8.4323C1.6587 9.95932 2.08335 11.2348 2.93419 12.3575C3.78814 13.4687 4.88475 14.1771 6.224 14.4796C5.7387 14.6111 5.22695 14.6735 4.7012 14.6735C4.21589 14.6735 3.87213 14.6308 3.66837 14.5371C4.02613 15.7814 4.7012 16.7906 5.67648 17.5632C6.64865 18.339 7.76703 18.7483 9.02385 18.7845C6.95196 20.5022 4.58298 21.352 1.90291 21.352C1.2465 21.352 0.781418 21.3421 0.499878 21.2895C3.13951 23.1009 6.07779 24 9.32872 24C12.6559 24 15.5957 23.1091 18.1545 21.3273C20.7132 19.5554 22.6015 17.3692 23.8148 14.7951C25.0343 12.2244 25.6378 9.54839 25.6378 6.75406V5.9848C26.8169 5.04787 27.7704 3.9926 28.4999 2.8272C27.4422 3.30881 26.3487 3.63592 25.2178 3.80193Z">

export tag Medium
	prop fill-color
	prop stroke-color

	def render
		<self>
			<svg viewBox="0 0 46 24" fill=fill-color stroke=stroke-color>
				<path d="M24.4999 12.0002C24.4999 18.6275 19.1272 24 12.5001 24C5.87294 24 0.499878 18.6275 0.499878 12.0002C0.499878 5.37288 5.87253 0 12.5001 0C19.1276 0 24.4999 5.37288 24.4999 12.0002ZM38.4999 12C38.4999 18.3501 35.8136 23.5 32.4999 23.5C29.1862 23.5 26.4999 18.3501 26.4999 12C26.4999 5.64986 29.1858 0.5 32.4995 0.5C35.8132 0.5 38.4995 5.64821 38.4995 12H38.4999ZM42.9999 22.5C44.3809 22.5 45.5001 17.7974 45.5001 12C45.5001 6.20093 44.3804 1.5 42.9999 1.5C41.6193 1.5 40.5001 6.20135 40.5001 12C40.5001 17.7987 41.6189 22.5 42.9999 22.5Z">

export tag Bracket
	def render
		<self>
			<svg viewBox="0 0 4 32">
				<path d="M2 27.3431C2 28.1388 2.31607 28.9019 2.87868 29.4645L3.70711 30.2929C4.09763 30.6834 4.09763 31.3166 3.70711 31.7071C3.31658 32.0976 2.68342 32.0976 2.29289 31.7071L1.46447 30.8787C0.526783 29.941 -1.45593e-07 28.6692 -2.03558e-07 27.3431L-1.19521e-06 4.65685C-1.25317e-06 3.33077 0.526783 2.059 1.46446 1.12132L2.29289 0.292892C2.68342 -0.0976316 3.31658 -0.0976316 3.70711 0.292892C4.09763 0.683418 4.09763 1.31658 3.70711 1.70711L2.87868 2.53553C2.31607 3.09814 2 3.8612 2 4.65685L2 27.3431Z">

export tag Lightning
	def render
		<self>
			<svg viewBox="0 0 26 50">
				<path d="M21 1L1 25L10 29L5 49L25 25L16 21L21 1Z" stroke="url(#rainbow)">
				<defs>
					<linearGradient id="rainbow" x1="0" x2="100%" y1="100%" y2="0">
						<stop stop-color="#4E01FF" offset="0%">
						<stop stop-color="#FE039A" offset="100%">

export tag Error
	def render
		<self>
			<svg viewBox="0 0 56 48" fill="url(#rainbow)">
				<path d="M27 35L26 21H30L29 35H27Z">
				<path d="M27 39V37H29V39H27Z">
				<path d="M0 48L28 0L56 48H0ZM3.48206 46L28 3.9693L52.5179 46H3.48206Z">