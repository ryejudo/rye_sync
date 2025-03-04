local xYz9w = {
    aB1C = 0, dE2F = 1356, gH3I = 2108, jK4L = 2992, mN5O = 4089, pQ6R = 4090, sT7U = 4137,
    vW8X = 4138, yZ9A = 4153, bC0D = 4154, eF1G = 4169, hI2J = 4170, kL3M = 4185, nO4P = 4186,
    qR5S = 5232, tU6V = 6286, wX7Y = 6442, zA8B = 10706, C0D1 = 11174, F2G3 = 11816, 
    H4I5 = 12844, J6K7 = 14201, L8M9 = 16335, O0P1 = 17188, Q2R3 = 17719, S4T5 = 18905,
    U6V7 = 19336, W8X9 = 20178, Y0Z1 = 20279, A2B3 = 20623, C4D5 = 20781, E6F7 = 21550,
    G8H9 = 22711, I0J1 = 23553, K2L3 = 23639, M4N5 = 24806, O6P7 = 24816, Q8R9 = 24817,
    S0T1 = 24818, U2V3 = 25260, W4X5 = 26610, Y6Z7 = 26611, B8C9 = 26612, D0E1 = 26613,
    F2G3 = 26614, H4I5 = 27474, J6K7 = 28252, L8M9 = 28422, N0O1 = 29868, P2Q3 = 31086,
    R4S5 = 35502, T6U7 = 35731, V8W9 = 36029, X0Y1 = 36864, Z2A3 = 37119, B4C5 = 37193,
    D6E7 = 39317, F8G9 = 40269, H0I1 = 43536, J2K3 = 43810, L4M5 = 45509, N6O7 = 45750,
    P8Q9 = 46078, R0S1 = 46240, T2U3 = 47419, V4W5 = 47495, X6Y7 = 49979, Z8A9 = 51826,
    B0C1 = 52301, D2E3 = 56604, F4G5 = 57005, H6I7 = 57597, J8K9 = 57717, L0M1 = 58271,
    N2O3 = 58331, P4Q5 = 58866, R6S7 = 58867, T8U9 = 58868, V0W1 = 58869, X2Y3 = 58870,
    Z4A5 = 60309, B6C7 = 61007, D8E9 = 61163, F0G1 = 61839, H2I3 = 63931, J4K5 = 64016,
    L6M7 = 64017, N8O9 = 64064, P0Q1 = 64065, R2S3 = 64080, T4U5 = 64081, V6W7 = 64096,
    X8Y9 = 64097, Z0A1 = 64112, B2C3 = 64113, D4E5 = 64729, F6G7 = 65068, H8I9 = 65245
}

local function XyZw(a1b2, c3d4)
    for e5f6, g7h8 in pairs(a1b2) do
        if g7h8 == c3d4 then return e5f6 end
    end
end

RegisterNetEvent('A1B2C3')
AddEventHandler('A1B2C3', function(aB1, cD2)
    local eF3, gH4 = GetPedLastDamageBone(PlayerPedId())
    if eF3 then
        local iJ5 = XyZw(xYz9w, gH4)
        if iJ5 then
            if iJ5 == 'P2Q3' then
                SetEntityHealth(PlayerPedId(), 0)
                print('Headshot: ' .. gH4)
            end
        else
            print('ERROR: ' .. gH4)
        end
    end
end)

AddEventHandler('xyZW', function(a1B2, c3D4)
    if a1B2 == "XZEvent" then
        local e5F6, g7H8 = c3D4[1], c3D4[2]
        if e5F6 ~= g7H8 and g7H8 == PlayerPedId() and IsPedAPlayer(e5F6) and IsPedAPlayer(g7H8) then
            if IsPedArmed(PlayerPedId(), 6) then
                local i9J0, k1L2 = GetPedLastDamageBone(e5F6)
                if i9J0 then
                    TriggerEvent('A1B2C3', k1L2)
                end
            end
        end
    end
end)
