jQuery(document).ready(function() {
	var slabStart = "<span class='slabtext'>",
    slabEnd = "</span>",
    txt = [
        "Welcome to the world's",
        "best bookstore!",
        "Come on in & check out what we've got.", 
        "You won't be dissapointed!"];
	jQuery("#welcome-message_span").html(slabStart + txt.join(slabEnd + slabStart) + slabEnd).slabText();
});