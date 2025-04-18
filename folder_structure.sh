# 🎨 Color variables
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 🖼️ Welcome banner
echo ""
echo  "${CYAN}╔════════════════════════════════════════════════════╗"
echo  "║                                                    ║"
echo  "║         🚀 Welcome Back, ${YELLOW}Milan Tilija${CYAN}!             ║"
echo  "║                                                    ║"
echo  "║    🛠️ Let's build something amazing with Flutter!   ║"
echo  "║                                                    ║"
echo  "╚════════════════════════════════════════════════════╝${NC}"
echo ""


# 📁 Structure info
echo "📁 ${GREEN}Creating Clean Architecture Folder Structure...${NC}"
sleep 1

# 📝 Ask feature name
read -r -a FEATURES -p "🔤 Enter feature name(s) (e.g., auth profile calendar): "

echo ""

# Loop through each feature entered
for FEATURE in "${FEATURES[@]}"
do
  echo "🔧 Setting up feature: ${YELLOW}$FEATURE${NC}"
  sleep 0.5

  mkdir -p lib/feature/"$FEATURE"/data/{datasources,models,repositories}
  mkdir -p lib/feature/"$FEATURE"/domain/{entities,repositories,usecase}
  mkdir -p lib/feature/"$FEATURE"/presentation/{bloc,screen,widgets}

  echo "✅ ${GREEN}Feature '$FEATURE' structure created.${NC}"
  echo ""
  sleep 0.3
done

echo "${GREEN}🎉 All done! Happy coding, Milan!${NC} 💻🔥"