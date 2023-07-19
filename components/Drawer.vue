<template>
    <div :class="props.isMobile ? 'drawer z-10' : 'drawer drawer-open'">
        <input
            v-model="isOpen"
            id="my-drawer"
            type="checkbox"
            class="drawer-toggle"
        />
        <div class="drawer-content" v-if="props.isMobile">
            <label
                aria-label="Secundary Menu Button Open Toggle"
                for="my-drawer"
                class="btn btn-ghost btn-circle"
            >
                <Icon icon="menu" class="fill-current stroke-current w-6 h-6" />
            </label>
        </div>
        <div class="drawer-side">
            <label
                aria-label="Secundary Menu Button Close Toggle"
                for="my-drawer"
                class="drawer-overlay"
            ></label>

            <ul
                class="menu menu-vertical flex-nowrap overflow-auto bg-base-200 p-4 h-full text-base-content"
            >
                <li v-if="props.isMobile">
                    <nuxtLink to="/" class="flex justify-center">
                        <Icon
                            icon="logo"
                            class="h-10 fill-current stroke-current"
                        />
                    </nuxtLink>
                </li>
                <li v-if="props.isMobile">
                    <nuxtLink to="/docs/welcome">👋 Documentation</nuxtLink>
                </li>
                <li v-if="props.isMobile"><nuxtLink>🍳 Examples</nuxtLink></li>
                <li v-if="props.isMobile">
                    <a href="https://gofiber.io/support" target="_blank">
                        ☕ Donate
                    </a>
                </li>

                <li v-if="props.isMobile" tabindex="0">
                    <details>
                        <summary>🧩 Extra</summary>
                        <ul class="p-2 bg-base-200">
                            <li><nuxtLink>Contrib</nuxtLink></li>
                            <li><nuxtLink>Storage</nuxtLink></li>
                            <li><nuxtLink>Template</nuxtLink></li>
                        </ul>
                    </details>
                </li>
                <li v-for="(navitem, i) in navstruct" :key="i">
                    <nuxtLink
                        v-if="navitem.href && navitem.title"
                        :to="navitem.href"
                    >
                        {{ navitem.title }}
                    </nuxtLink>
                    <h3
                        v-if="!navitem.href && navitem.title"
                        class="menu-title"
                    >
                        {{ navitem.title }}
                    </h3>
                    <ul v-if="navitem.ls">
                        <li v-for="(navsubitem, j) in navitem.ls" :key="j">
                            <nuxtLink
                                v-if="navsubitem.href && navsubitem.title"
                                :to="navsubitem.href"
                            >
                                {{ navsubitem.title }}
                            </nuxtLink>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</template>

<script lang="ts" setup>
const props = defineProps<{
    isMobile: boolean;
}>();
const isOpen = ref(false);
type Navstruct = {
    title?: string;
    href?: string;
    newWindow?: boolean;
    ls?: Array<Navstruct>;
};
const navstruct: Array<Navstruct> = [
    {
        title: props.isMobile ? undefined : "👋 Welcome",
        href: props.isMobile ? undefined : "/docs/welcome",
    },
    {
        title: "Api",
        ls: [
            {
                title: "📦 Fiber",
                href: "/docs/api/fiber/new",
            },
            {
                title: "🚀 App",
                href: "/docs/api/app/static",
            },
            {
                title: "🧠 Ctx",
                href: "/docs/api/ctx/accepts",
            },
            {
                title: "📋 Constants",
                href: "/docs/api/constants",
            },
            {
                title: "🌎 Client",
                href: "/docs/api/client",
            },
            {
                title: "📃 Log",
                href: "/docs/api/log",
            },
            {
                title: "🧬 Middleware",
                href: "/docs/api/middleware",
            },
        ],
    },
    {
        title: "Guide",
        ls: [
            {
                title: "🔌 Routing",
                href: "/docs/guide/routing",
            },
            {
                title: "🎭 Grouping",
                href: "/docs/guide/grouping",
            },
            {
                title: "📝 Templates",
                href: "/docs/guide/templates",
            },
            {
                title: "🐛 Error Handling",
                href: "/docs/guide/error-handling",
            },
            {
                title: "🔎 Validation",
                href: "/docs/guide/validation",
            },
            {
                title: "🪝 Hooks",
                href: "/docs/guide/hooks",
            },
            {
                title: "⚡ Make Fiber Faster",
                href: "/docs/guide/faster-fiber",
            },
        ],
    },
    {
        title: "Extra",
        ls: [
            {
                title: "🤔 FAQ",
                href: "/docs/extra/faq",
            },
            {
                title: "📊 Benchmarks",
                href: "/docs/extra/benchmarks",
            },
        ],
    },
];

const router = useRouter();
router.afterEach(() => {
    isOpen.value = false;
});
</script>
