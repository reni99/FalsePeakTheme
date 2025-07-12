import Testing
@testable import FalsePeakTheme
import UIKit

@Test("Test font creation and registration")
func testFontAccess() async throws {
    FalsePeakTheme.registerFonts()
    #expect(UIFont.title1 != nil)
    #expect(UIFont.title2 != nil)
    #expect(UIFont.title3 != nil)
    #expect(UIFont.title4 != nil)
    #expect(UIFont.body != nil)
    #expect(UIFont.caption != nil)
    #expect(UIFont.captionEm != nil)
    #expect(UIFont.small != nil)
    #expect(UIFont.smallEm != nil)
    #expect(UIFont.bodyEm != nil)
}

@Test("Test color creation")
func testColorAccess() async throws {
    
    #expect(OmegaRed.v100.rawColor != nil)
    #expect(OmegaRed.v200.rawColor != nil)
    #expect(OmegaRed.v300.rawColor != nil)
    #expect(OmegaRed.v400.rawColor != nil)
    #expect(OmegaRed.v500.rawColor != nil)
    #expect(OmegaRed.v600.rawColor != nil)
    #expect(OmegaRed.v700.rawColor != nil)
    #expect(OmegaRed.v800.rawColor != nil)
    
    #expect(OmegaIndigo.v100.rawColor != nil)
    #expect(OmegaIndigo.v200.rawColor != nil)
    #expect(OmegaIndigo.v300.rawColor != nil)
    #expect(OmegaIndigo.v400.rawColor != nil)
    #expect(OmegaIndigo.v500.rawColor != nil)
    #expect(OmegaIndigo.v600.rawColor != nil)
    #expect(OmegaIndigo.v700.rawColor != nil)
    #expect(OmegaIndigo.v800.rawColor != nil)
    
    #expect(OmegaBlack.v100.rawColor != nil)
    #expect(OmegaBlack.v200.rawColor != nil)
    #expect(OmegaBlack.v300.rawColor != nil)
    #expect(OmegaBlack.v400.rawColor != nil)
    #expect(OmegaBlack.v500.rawColor != nil)
    #expect(OmegaBlack.v600.rawColor != nil)
    #expect(OmegaBlack.v700.rawColor != nil)
    #expect(OmegaBlack.v800.rawColor != nil)
    
    #expect(OmegaWhite.v100.rawColor != nil)
    #expect(OmegaWhite.v200.rawColor != nil)
    #expect(OmegaWhite.v300.rawColor != nil)
    #expect(OmegaWhite.v400.rawColor != nil)
    #expect(OmegaWhite.v500.rawColor != nil)
    #expect(OmegaWhite.v600.rawColor != nil)
    #expect(OmegaWhite.v700.rawColor != nil)
    #expect(OmegaWhite.v800.rawColor != nil)
}
