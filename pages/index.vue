<template>
    <div class="flex flex-col grow items-center">
        <h1 class="text-5xl md:text-8xl font-black text-center max-w-screen-xl my-12 px-6 md:px-12">
            The GO Web-Framework for Gophers
        </h1>
        <p class="text-xl text-center max-w-screen-md px-6 md:px-12">
            Fiber is a Express-inspired Go web framework built on top of
            Fasthttp, the
            <B>fastest</B> HTTP engine for Go. It's designed to
            <B>ease</B> things up for fast development with
            <B>zero memory allocation</B> and <B>performance</B> in mind.
        </p>
        <div class="flex w-full justify-center my-12 px-6 md:px-12">
            <div class="flex flex-col grow max-w-screen-sm">
                <Code path="/snippets/index-1" />
            </div>
        </div>
        <div class="flex flex-col md:flex-row w-full py-12 bg-base-200 px-6 md:px-12">
            <div class="flex flex-col justify-center grow">
                <h2 class="text-4xl font-bold">Robust Routing</h2>
                <P>
                    Setting up routes for your application has never been so
                    easy! The Express-like route definitions are easy to
                    understand and work with.
                </P>
            </div>
            <div class="flex flex-col grow w-full max-w-screen-sm">
                <Code path="/snippets/index-2" />
            </div>
        </div>
        <div class="flex flex-col md:flex-row w-full py-12 bg-base-100 px-6 md:px-12">
            <div class="flex flex-col grow w-full max-w-screen-sm">
                <Code path="/snippets/index-3" />
            </div>
            <div class="flex flex-col justify-center grow md:pl-12 pt-6">
                <h2 class="text-4xl font-bold">Serve Static Files</h2>
                <P>
                    Serve your static HTML, CSS, and JavaScript files with ease
                    by defining static routes. You can also serve the contents
                    of multiple directories on the same route!
                </P>
            </div>
        </div>
        <div class="flex flex-col md:flex-row w-full py-12 bg-base-200 px-6 md:px-12">
            <div class="flex flex-col justify-center grow">
                <h2 class="text-4xl font-bold">API-ready</h2>
                <P>
                    Are you building an API server? We've got you covered! Fiber
                    is the perfect choice for building REST APIs in Go.
                    Receiving and sending data is fast and easy!
                </P>
            </div>
            <div class="flex flex-col grow w-full max-w-screen-sm">
                <Code path="/snippets/index-4" />
            </div>
        </div>
        <div class="flex flex-col md:flex-row w-full py-12 bg-base-100 px-6 md:px-12">
            <div class="flex flex-col grow w-full max-w-screen-sm">
                <Code path="/snippets/index-5" />
            </div>
            <div class="flex flex-col justify-center grow md:pl-12 pt-6">
                <h2 class="text-4xl font-bold">Flexible Middleware Support</h2>
                <P>
                    Choose from a number of already existing middleware or
                    create your own! Use them to verify and manipulate certain
                    requests in your app before they reach your controller.
                </P>
            </div>
        </div>
        <div class="flex flex-col md:flex-row w-full py-12 bg-base-200 px-6 md:px-12">
            <div class="flex flex-col justify-center grow">
                <h2 class="text-4xl font-bold">Low Memory Footprint</h2>
                <P>
                    Fiber's low memory footprint allows you to implement
                    features without worrying too much about how much memory
                    your application will use. This allows you to focus on your
                    application and its business logic, rather than technical
                    particularities.
                </P>
            </div>
            <div class="flex flex-col justify-center grow md:pl-12 pt-6">
                <h2 class="text-4xl font-bold">Rapid Programming</h2>
                <P>
                    Take your idea and turn it into reality in no time! Thanks
                    to the well-designed and easy-to-learn API, you can develop
                    your application in record speed (especially if you're
                    coming from an Express.js background).
                </P>
            </div>
        </div>
        <div class="flex flex-col md:flex-row w-full py-12 bg-base-100 px-6 md:px-12">
            <div class="flex flex-col justify-center grow">
                <h2 class="text-4xl font-bold">Template Engines</h2>
                <P>
                    Want to use a different template engine in your Fiber app?
                    Fear no more! Fiber supports multiple template engines, such
                    as Handlebars and Pug, thanks to the template middleware.
                </P>
            </div>
            <div class="flex flex-col grow w-full max-w-screen-sm">
                <Code path="/snippets/index-6" />
            </div>
        </div>
        <div class="flex flex-col md:flex-row w-full py-12 bg-base-200 px-6 md:px-12">
            <div class="flex flex-col grow w-full max-w-screen-sm">
                <Code path="/snippets/index-7" />
            </div>
            <div class="flex flex-col justify-center grow md:pl-12 pt-6">
                <h2 class="text-4xl font-bold">WebSocket Support</h2>
                <P>
                    Use the power of WebSockets in your Fiber app! Build fast
                    interactive user experiences with performance and
                    scalability guaranteed.
                </P>
            </div>
        </div>
        <div class="flex flex-col md:flex-row w-full py-12 bg-base-100 px-6 md:px-12">
            <div class="flex flex-col justify-center grow">
                <h2 class="text-4xl font-bold">Rate Limiter</h2>
                <P>
                    With Fiber, limiting repeated requests to public APIs and
                    endpoints is very simple. No more abusive requests!
                </P>
            </div>
            <div class="flex flex-col grow w-full max-w-screen-sm">
                <Code path="/snippets/index-8" />
            </div>
        </div>
    </div>
</template>

<script lang="ts" setup>
definePageMeta({
    layout: "home",
});
</script>
