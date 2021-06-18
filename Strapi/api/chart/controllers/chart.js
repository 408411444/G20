'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

module.exports = {
    homepage: async (ctx) => {
        let data;
        data = await strapi.services.chart.find();

        return await ctx.render("final", {
          data,
          title: "T20Final",
        });
      },
};



