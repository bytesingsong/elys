package types

// DefaultIndex is the default global index
const DefaultIndex uint64 = 1

//nolint:interfacer
func NewGenesisState() *GenesisState {
	return &GenesisState{}
}

// DefaultGenesis returns the default genesis state
func DefaultGenesis() *GenesisState {
	return &GenesisState{
		// this line is used by starport scaffolding # genesis/types/default
	}
}

// Validate performs basic genesis state validation returning an error upon any
// failure.
func (gs GenesisState) Validate() error {
	return nil
}
