package TransferObjects;

public class BiopsyDetailsTO {

	private int clumpThickness;
	private int cellSize;
	private int cellShape;
	private int marginalAdhesion;
	private int epithelialCellSize;
	private int bareNuclei;
	private int blandChromatin;
	private int mitoses;
	
	public BiopsyDetailsTO(BiopsyDetailsTO bat)
	{
		clumpThickness = bat.clumpThickness;
		cellSize = bat.cellSize;
		cellShape = bat.cellShape;
		marginalAdhesion = bat.marginalAdhesion;
		epithelialCellSize = bat.epithelialCellSize;
		bareNuclei = bat.bareNuclei;
		blandChromatin = bat.blandChromatin;
		mitoses = bat.mitoses;
		
	}

	public int getClumpThickness() {
		return clumpThickness;
	}

	public void setClumpThickness(int clumpThickness) {
		this.clumpThickness = clumpThickness;
	}

	public int getCellSize() {
		return cellSize;
	}

	public void setCellSize(int cellSize) {
		this.cellSize = cellSize;
	}

	public int getCellShape() {
		return cellShape;
	}

	public void setCellShape(int cellShape) {
		this.cellShape = cellShape;
	}

	public int getMarginalAdhesion() {
		return marginalAdhesion;
	}

	public void setMarginalAdhesion(int marginalAdhesion) {
		this.marginalAdhesion = marginalAdhesion;
	}

	public int getEpithelialCellSize() {
		return epithelialCellSize;
	}

	public void setEpithelialCellSize(int epithelialCellSize) {
		this.epithelialCellSize = epithelialCellSize;
	}

	public int getBareNuclei() {
		return bareNuclei;
	}

	public void setBareNuclei(int bareNuclei) {
		this.bareNuclei = bareNuclei;
	}

	public int getBlandChromatin() {
		return blandChromatin;
	}

	public void setBlandChromatin(int blandChromatin) {
		this.blandChromatin = blandChromatin;
	}

	public int getMitoses() {
		return mitoses;
	}

	public void setMitoses(int mitoses) {
		this.mitoses = mitoses;
	}
	
	
	
	

}
