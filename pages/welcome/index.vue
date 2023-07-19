<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>👋 Welcome</H1>
            <P>
                An online API documentation with examples so you can start
                building web apps with Fiber right away!
            </P>
            <P>
                <B>Fiber</B> is an Express inspired <B>web framework</B> built
                on top of Fasthttp, the <B>fastest</B> HTTP engine for Go.
                Designed to ease things up for fast development with
                <B>zero memory allocation</B> and <B>performance</B> in mind.
            </P>
        </div>
        <SubMenu :menu-items="subMenuWelcome" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuWelcome" />
</template>

<script lang="ts" setup>
const title = "Fiber | 👋 Welcome";
useSeoMeta({
    title: title,
    ogTitle: title,
});
</script>