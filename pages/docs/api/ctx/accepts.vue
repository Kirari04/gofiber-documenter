<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - Accepts</H1>
            <P>
                Checks, if the specified <B>extensions</B> or
                <B>content types</B> are acceptable.
            </P>
            <div class="alert alert-info mb-6">
                <Icon icon="info" />
                <span>
                    Based on the request's
                    <B>
                        <Ref
                            href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept"
                            :blank="true"
                        >
                            Accept
                        </Ref>
                    </B>
                    HTTP header.
                </span>
            </div>
            <Code path="/snippets/ctx-accepts-1" />
            <P> Example implementation of <B>Accepts</B> </P>
            <Code path="/snippets/ctx-accepts-2" />
            <P> More specific example implementation of <B>Accepts</B> </P>
            <Code path="/snippets/ctx-accepts-3" />
            <P>
                Fiber provides similar functions for the other accept headers.
            </P>
            <Code path="/snippets/ctx-accepts-4" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🧠 Ctx - Accepts";
const description =
    "Checks, if the specified extensions or content types are acceptable.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
