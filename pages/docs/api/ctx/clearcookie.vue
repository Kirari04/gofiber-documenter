<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P> Expire a client cookie (or all cookies if left empty) </P>
            
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-1`" />
            <P>
                Example implementation of <B>{{ name }}</B>
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-2`" />
            <div class="alert alert-info my-6">
                <Icon icon="info" />
                <span>
                    <B>CAUTION</B>: Web browsers and other compliant clients
                    will only clear the cookie if the given options are
                    identical to those when creating the cookie, excluding
                    expires and maxAge. ClearCookie will not set these values
                    for you - a technique similar to the one shown below should
                    be used to ensure your cookie is deleted.
                </span>
            </div>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-3`" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const name = "ClearCookie";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description = "Expire a client cookie (or all cookies if left empty)";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
