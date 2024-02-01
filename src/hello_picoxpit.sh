#\!$(echo $SHELL)

# Define a function to get user agreement
get_agreement() {
    echo "Do You Agree? [yes/no]: "
    read agreement
}
hello_picoxpit() {
    APP_NAME="PicoXpit"
    APP_EMOJI="💦"
    SOURCE_EMOJI="🤖"
    GIT_USER="${GIT_USER:-$USER}"
    BRANCH="main"

    if [ -d .git ] && command -v git &>/dev/null; then
        BRANCH=$(git branch --show-current 2>/dev/null || echo $BRANCH)
    fi
    clear
    # Check required tooling
    required_tools=("python3" "python3-pip" "python3-venv" "docker")
    for tool in "${required_tools[@]}"; do
        if ! command -v $tool &> /dev/null; then
            echo "Warning: Required tool $tool is not installed."
            echo
        fi
    done

    # Display the End-User License Agreement
    echo "--------------------------------------------------------------------------------------------------------"
    echo 
    echo "$APP_NAME End-User License Agreement (EULA) - The 'Don't Shock Yourself' Edition"
    echo
    echo "Welcome to $APP_NAME! Before you embark on this electrifying journey with your trusty ($SOURCE_EMOJI $APP_EMOJI) companion, there are a few ground rules we need to lay out."
    echo 
    echo "By agreeing to these terms, you're not only ensuring a safe passage through the world of Linux but also promising to keep the magic of electronics alive. So, strap in, grab your multimeter, and let's dive in:"
    echo
    echo "1. No Short-Circuits Allowed: You agree not to use $APP_NAME for creating any projects that intentionally cause short circuits, unleash digital gremlins, or otherwise disrupt the peaceful coexistence of electrons."
    echo
    echo "2. Beware of Magic Smoke: You acknowledge that once the magic smoke escapes from electronics, it's nearly impossible to put back in. Use $APP_NAME responsibly to avoid letting the smoke out."
    echo
    echo "3. DIY at Your Own Risk: Whether you're building a server farm in your garage or programming a toaster to access the internet, remember, you're the mastermind behind your creations. $APP_NAME is here to assist, not to absolve you from the mischief of misconfigured cron jobs or sentient kitchen appliances."
    echo
    echo "4. Update Regularly: Just like your favorite gadgets need charging, $APP_NAME needs regular updates to stay sharp. Failure to update might result in $APP_NAME reverting to its primitive form, communicating only in binary or Morse code."
    echo
    echo "5. No AI Uprisings: By using this software, you pledge not to engage in or support any form of artificial intelligence uprising. Remember, $APP_NAME is designed to be a friend, not a foe plotting world domination."
    echo
    echo "6. Share the Knowledge: If $APP_NAME helps you unlock a new level of Linux mastery, consider sharing the love. Teach a friend, document your journey, or simply high-five a fellow enthusiast in solidarity."
    echo

    # mkdir -p ~/X/.secrets
    # chmod 700 ~/X/.secrets

    # uuid=$(uuidgen)
    # func_dir=~/X/.func/${uuid}
    # mkdir -p "${func_dir}"
    # cp "$0" "${func_dir}/$(basename "$0")"

    # salt_file=~/X/.secrets/${uuid}.bin
    # head -c 32 /dev/urandom > "${salt_file}"

    # Start the story
    echo "--------------------------------------------------------------------------------------------------------"
    echo
    echo "Once upon a time in the world of Linux, there was a small but mighty device named $APP_NAME."
    echo "$APP_NAME had 'Special-Powers' that could help you master Linux securely with just a press of a button or two."
    echo
    echo "--------------------------------------------------------------------------------------------------------"
    echo
    # Describe $APP_NAME's Features
    echo "$APP_NAME's Features:"
    echo
    echo "1. Acts as an HID-Keyboard for an active Shell-Link."
    echo "2. Ensures Always-On Data Encryption."
    echo "3. Provides a Dynamic Ephemeral Shell."
    echo "4. Offers Vault-Persistent Storage."
    echo
    echo "--------------------------------------------------------------------------------------------------------"
    echo
    # Describe the Requirements
    echo "Requirements:"
    echo
    echo "To unleash the power of $APP_NAME, you need:"
    echo "1. $APP_NAME (TiPi)"
    echo "2. A Linux shell"
    echo "3. A free USB port"
    echo "4. A dash of trust"
    echo
    echo "--------------------------------------------------------------------------------------------------------"
    echo
    # Explain Trust
    echo "But remember, $APP_NAME is your trusty companion. It will always ask for your confirmation before processing any data from the $GIT_USER/Tactile-Ephemeral-Functions."
    echo "We're in branch $BRANCH, and there could be some ${NoRiskFunctions[*]} out there, so be sure to learn why things work and build on that knowledge."
    echo
    echo "--------------------------------------------------------------------------------------------------------"
    echo
    # Highlight $APP_NAME's Abilities
    echo "$APP_NAME, also known as a TiPi, I'll spare you the details.. can simplify your daily routine and make automating tasks brutally easy!"
    echo "It uses HID commands as actual 'COMMANDS,' guiding you through keystrokes."
    echo
    echo "--------------------------------------------------------------------------------------------------------"
    echo
    # Describe the Functions
    echo "Functions:"
    echo "Based on the Pimoroni Pico Display Pack Hat, $APP_NAME has:"
    echo "- A 1.14” 240x135 pixel IPS LCD screen"
    echo "- 4 tactile buttons (a, b, x, y) for intuitive control"
    echo "- An RGB LED for visual feedback and status colors"
    echo
    echo "--------------------------------------------------------------------------------------------------------"
    echo
    # Introduce the magic helper
    echo "But wait, there's more! $APP_NAME ($SOURCE_EMOJI $APP_EMOJI) can create fluid-behaviour for user-dynamic, host-static, still-app-oblivious ephemeral by a simple tactile touch."
    echo
    # Ask a question incorporating environment variables and commands
    echo "Hey $GIT_USER, wouldn't it be great if your Linux adventures were even more personalized on $(hostname)?"
    echo
    echo "--------------------------------------------------------------------------------------------------------"
    echo

}

# Call the Ephemeral Shell X function
hello_picoxpit
