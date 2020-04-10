function _current_ruby_prompt
    set --local is_git_repository (command git rev-parse --is-inside-work-tree 2>/dev/null)

    if test -n "$is_git_repository"
        set --local current_ruby (rvm current)
        echo '|| 💎' $current_ruby
    else
        return
    end
end