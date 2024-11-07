TalentBuddy = AceLibrary("AceAddon-2.0"):new("AceConsole-2.0", "AceHook-2.1")

-- Stolen from Blizzard
MAX_TALENT_TABS = 5;
MAX_NUM_TALENTS = 20;
MAX_NUM_TALENT_TIERS = 8;
NUM_TALENT_COLUMNS = 4;
TALENT_BRANCH_ARRAY = {};
TALENT_BUTTON_SIZE = 32;
MAX_NUM_BRANCH_TEXTURES = 30;
MAX_NUM_ARROW_TEXTURES = 30;
INITIAL_TALENT_OFFSET_X = 35;
INITIAL_TALENT_OFFSET_Y = 20;

TALENT_BRANCH_TEXTURECOORDS = {
    up = {
        [1] = {0.12890625, 0.25390625, 0, 0.484375},
        [-1] = {0.12890625, 0.25390625, 0.515625, 1.0}
    },
    down = {[1] = {0, 0.125, 0, 0.484375}, [-1] = {0, 0.125, 0.515625, 1.0}},
    left = {
        [1] = {0.2578125, 0.3828125, 0, 0.5},
        [-1] = {0.2578125, 0.3828125, 0.5, 1.0}
    },
    right = {
        [1] = {0.2578125, 0.3828125, 0, 0.5},
        [-1] = {0.2578125, 0.3828125, 0.5, 1.0}
    },
    topright = {
        [1] = {0.515625, 0.640625, 0, 0.5},
        [-1] = {0.515625, 0.640625, 0.5, 1.0}
    },
    topleft = {
        [1] = {0.640625, 0.515625, 0, 0.5},
        [-1] = {0.640625, 0.515625, 0.5, 1.0}
    },
    bottomright = {
        [1] = {0.38671875, 0.51171875, 0, 0.5},
        [-1] = {0.38671875, 0.51171875, 0.5, 1.0}
    },
    bottomleft = {
        [1] = {0.51171875, 0.38671875, 0, 0.5},
        [-1] = {0.51171875, 0.38671875, 0.5, 1.0}
    },
    tdown = {
        [1] = {0.64453125, 0.76953125, 0, 0.5},
        [-1] = {0.64453125, 0.76953125, 0.5, 1.0}
    },
    tup = {
        [1] = {0.7734375, 0.8984375, 0, 0.5},
        [-1] = {0.7734375, 0.8984375, 0.5, 1.0}
    }
};

TALENT_ARROW_TEXTURECOORDS = {
    top = {[1] = {0, 0.5, 0, 0.5}, [-1] = {0, 0.5, 0.5, 1.0}},
    right = {[1] = {1.0, 0.5, 0, 0.5}, [-1] = {1.0, 0.5, 0.5, 1.0}},
    left = {[1] = {0.5, 1.0, 0, 0.5}, [-1] = {0.5, 1.0, 0.5, 1.0}}
};

UIPanelWindows["TalentBuddyFrame"] = {
    area = "left",
    pushable = 6,
    whileDead = 1
};

-- End Stolen from Blizzard

function TalentBuddy:OnInitialize() end

function TalentBuddy:OnEnable() self:Hook("TalentFrame_Toggle") end

function TalentBuddy:TalentFrame_Toggle()
    self:Print("Talent Frame Hidden?");
    TalentBuddyFrame:Show();
    -- TalentFrame:Show();
end

function TalentBuddy:OnDisable() end
