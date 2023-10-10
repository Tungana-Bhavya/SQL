## Find all posts which were reacted to with a heart
-------

select distinct facebook_posts.post_id,facebook_posts.poster,facebook_posts.post_text,facebook_posts.post_keywords,facebook_posts.post_date from facebook_reactions join facebook_posts on facebook_reactions.post_id=facebook_posts.post_id where facebook_reactions.reaction = 'heart';