<template>
    <header class="navbar bg-base-300">
        <!-- MOBILE -->
        <div class="md:hidden">
            <div class="flex items-center flex-1">
                <Drawer :isMobile="true" />
                <Logo />
            </div>
        </div>

        <!-- DESKTOP -->

        <div class="hidden md:flex md:w-full">
            <div class="flex items-center flex-1">
                <Logo />
                <ul class="menu menu-horizontal px-1">
                    <li><nuxtLink to="/welcome">📖 Docs</nuxtLink></li>
                    <li><nuxtLink>🍳 Examples</nuxtLink></li>
                    <li>
                        <a href="https://gofiber.io/support" target="_blank">
                            ☕ Donate
                        </a>
                    </li>

                    <li tabindex="0">
                        <details>
                            <summary>🧩 Extra</summary>
                            <ul class="p-2 bg-base-200">
                                <li><nuxtLink>Contrib</nuxtLink></li>
                                <li><nuxtLink>Storage</nuxtLink></li>
                                <li><nuxtLink>Template</nuxtLink></li>
                            </ul>
                        </details>
                    </li>
                </ul>
            </div>
            <div class="flex items-center flex-none">
                <div class="form-control">
                    <input
                        type="text"
                        placeholder="Search"
                        class="input input-bordered w-24 md:w-auto"
                    />
                </div>
                <div class="divider divider-horizontal"></div>

                <div
                    class="tooltip tooltip-bottom"
                    :data-tip="`Toggle to ${
                        isLightTheme ? 'dark' : 'light'
                    } theme`"
                >
                    <label class="swap swap-rotate btn btn-ghost btn-circle">
                        <!-- this hidden checkbox controls the state -->
                        <input v-model="isLightTheme" type="checkbox" />
                        <Icon
                            icon="sun"
                            class="swap-off fill-current w-6 h-6"
                        />
                        <Icon
                            icon="moon"
                            class="swap-on fill-current w-6 h-6"
                        />
                    </label>
                </div>
                <a
                    href="https://github.com/gofiber/fiber"
                    target="_blank"
                    rel="noopener noreferrer"
                    class="btn btn-ghost btn-circle"
                >
                    <Icon icon="github" />
                </a>
                <a
                    href="https://gofiber.io/discord"
                    target="_blank"
                    rel="noopener noreferrer"
                    class="btn btn-ghost btn-circle"
                >
                    <Icon icon="discord" />
                </a>
            </div>
        </div>
    </header>
</template>

<script lang="ts" setup>
const isLightTheme = useCookie<boolean>("theme");
</script>
